from .base import console, DB_CONFIG, SIM_CONFIG
import mysql.connector
import subprocess
import time
import random
from tqdm import tqdm
from rich.prompt import Prompt
from rich.table import Table

def generar_benchmark_sql():
    """Genera un archivo SQL con operaciones para benchmark y lo ejecuta"""
    try:
        num_compras = int(Prompt.ask("\nNúmero de compras a generar", default="1000"))
        num_reservas = int(Prompt.ask("Número de reservas a generar", default="500"))
        num_anulaciones = int(Prompt.ask("Número de anulaciones a generar", default="200"))
        num_consultas = int(Prompt.ask("Número de consultas a generar (muy caras)", default="0"))
        
        if num_compras < 0 or num_reservas < 0 or num_anulaciones < 0 or num_consultas < 0:
            console.print("[bold red]Los números no pueden ser negativos")
            return
        
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor(dictionary=True) # Use dictionary for easier access
        
        cursor.execute("""
            SELECT 
                e.fecha, e.recinto_id, e.espectaculo_id, l.ubicacion,
                GROUP_CONCAT(DISTINCT etu.tipo_usuario) as tipos_usuario_permitidos
            FROM Evento e
            JOIN Localidad l ON e.fecha = l.fecha 
                AND e.recinto_id = l.recinto_id 
                AND e.espectaculo_id = l.espectaculo_id
            LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion 
                AND l.fecha = t.fecha 
                AND l.recinto_id = t.recinto_id 
                AND l.espectaculo_id = t.espectaculo_id
            JOIN Espectaculo_TipoUsuario etu ON e.espectaculo_id = etu.espectaculo_id
            WHERE t.id_transaccion IS NULL AND e.estado = 'Abierto'
            GROUP BY e.fecha, e.recinto_id, e.espectaculo_id, l.ubicacion
        """)
        localidades_disponibles_raw = cursor.fetchall() # Fetches as tuples
        
        if not localidades_disponibles_raw:
            console.print("[bold red]No hay localidades disponibles para el benchmark (eventos abiertos y con localidades libres).[/bold red]")
            cursor.close()
            conn.close()
            return
        
        localidades_por_evento = {}
        for loc_data in localidades_disponibles_raw:
            key = (loc_data['fecha'], loc_data['recinto_id'], loc_data['espectaculo_id'])
            if key not in localidades_por_evento:
                localidades_por_evento[key] = []
            tipos_str = loc_data.get('tipos_usuario_permitidos')
            localidades_por_evento[key].append((loc_data['ubicacion'], tipos_str.split(',') if tipos_str else ['Adulto']))

        # Calculate required number of clients based on purchases and reservations (10 transactions per client max)
        total_transacciones = num_compras + num_reservas
        num_clientes_bm = (total_transacciones + 9) // 10  # Ceiling division
        clientes_bm = [f"BENCH_{i:04d}" for i in range(1, num_clientes_bm + 1)]
        clientes_disponibles_set = set(clientes_bm)
        
        # Dictionary to track transactions per client (both purchases and reservations)
        transacciones_por_cliente = {cliente: 0 for cliente in clientes_bm}
        
        console.print("[bold blue]Generando archivo SQL para benchmark...")
        
        with open(SIM_CONFIG['benchmark_file'], 'w', encoding='utf-8') as f:
            f.write("SET autocommit=0;\n")
            f.write("SET @start_time = NOW(3);\n\n") # Use NOW(3) for millisecond precision if supported
            
            # Add timing variables for each operation type
            f.write("SET @start_compras = NOW(3);\n")
            
            if clientes_bm:
                f.write("-- Crear clientes para el benchmark\n")
                f.write("INSERT INTO Cliente (datos_bancarios) VALUES\n")
                f.write(",\n".join([f"('{cl}')" for cl in clientes_bm]))
                f.write(";\n\n")
            
            operaciones_realizadas_count = 0
            max_total_operaciones = num_compras + num_reservas + num_anulaciones
            reservas_hechas_para_anular = [] 
            next_sim_trans_id = 1

            SQL_BATCH_SIZE = 500  # Configurable batch size for INSERTs
            transaction_values_batch = []

            def flush_transactions_batch(file_handle, batch):
                if not batch:
                    return
                file_handle.write(f"INSERT INTO Transaccion (id_transaccion, datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario) VALUES\n")
                file_handle.write(",\n".join(batch))
                file_handle.write(";\n")
                batch.clear()

            pbar_ops = tqdm(total=max_total_operaciones, desc="Generando operaciones SQL")

            # COMPRAS
            for _ in range(num_compras):
                if not localidades_por_evento or operaciones_realizadas_count >= max_total_operaciones: break
                
                if not clientes_disponibles_set:
                    console.print("[yellow]Todos los clientes han alcanzado el límite de 10 transacciones[/yellow]")
                    break
                    
                cliente_seleccionado = random.sample(list(clientes_disponibles_set), 1)[0]
                
                evento_key = random.choice(list(localidades_por_evento.keys()))
                if not localidades_por_evento[evento_key]:
                    del localidades_por_evento[evento_key]
                    continue
                ubicacion, tipos_usr = localidades_por_evento[evento_key].pop(0)
                if not localidades_por_evento[evento_key]: del localidades_por_evento[evento_key]
                fecha_sql, recinto_sql, espectaculo_sql = evento_key
                
                value_str = f"({next_sim_trans_id}, '{cliente_seleccionado}', 'compra', {ubicacion}, '{fecha_sql.strftime('%Y-%m-%d %H:%M:%S')}', '{recinto_sql}', {espectaculo_sql}, '{random.choice(tipos_usr)}')"
                transaction_values_batch.append(value_str)

                transacciones_por_cliente[cliente_seleccionado] += 1
                if transacciones_por_cliente[cliente_seleccionado] >= 10:
                    clientes_disponibles_set.discard(cliente_seleccionado)

                next_sim_trans_id+=1
                operaciones_realizadas_count += 1
                pbar_ops.update(1)
                if len(transaction_values_batch) >= SQL_BATCH_SIZE:
                    flush_transactions_batch(f, transaction_values_batch)

            # Flush any remaining transactions before anulaciones
            flush_transactions_batch(f, transaction_values_batch)
            
            # End compras timing and start reservas timing
            f.write("SET @end_compras = NOW(3);\n")
            f.write("SET @start_reservas = NOW(3);\n")
            
            console.print("[bold green]✓ Compras completadas[/bold green]")
            
            # RESERVAS
            for _ in range(num_reservas):
                if not localidades_por_evento or operaciones_realizadas_count >= max_total_operaciones: break
                
                if not clientes_disponibles_set:
                    console.print("[yellow]Todos los clientes han alcanzado el límite de 10 transacciones[/yellow]")
                    break
                    
                cliente_seleccionado = random.sample(list(clientes_disponibles_set), 1)[0]
                
                evento_key = random.choice(list(localidades_por_evento.keys()))
                if not localidades_por_evento[evento_key]: 
                    del localidades_por_evento[evento_key]
                    continue
                ubicacion, tipos_usr = localidades_por_evento[evento_key].pop(0)
                if not localidades_por_evento[evento_key]: del localidades_por_evento[evento_key]
                fecha_sql, recinto_sql, espectaculo_sql = evento_key

                value_str = f"({next_sim_trans_id}, '{cliente_seleccionado}', 'reserva', {ubicacion}, '{fecha_sql.strftime('%Y-%m-%d %H:%M:%S')}', '{recinto_sql}', {espectaculo_sql}, '{random.choice(tipos_usr)}')"
                transaction_values_batch.append(value_str)

                transacciones_por_cliente[cliente_seleccionado] += 1
                if transacciones_por_cliente[cliente_seleccionado] >= 10:
                    clientes_disponibles_set.discard(cliente_seleccionado)

                reservas_hechas_para_anular.append({'id': next_sim_trans_id, 'cliente': cliente_seleccionado})
                next_sim_trans_id+=1
                operaciones_realizadas_count += 1
                pbar_ops.update(1)
                if len(transaction_values_batch) >= SQL_BATCH_SIZE:
                    flush_transactions_batch(f, transaction_values_batch)

            # Flush any remaining transactions before anulaciones
            flush_transactions_batch(f, transaction_values_batch)
            
            # End reservas timing and start anulaciones timing
            f.write("SET @end_reservas = NOW(3);\n")
            f.write("SET @start_anulaciones = NOW(3);\n")
            
            console.print("[bold green]✓ Reservas completadas[/bold green]")

            # ANULACIONES
            for _ in range(num_anulaciones):
                if not reservas_hechas_para_anular or operaciones_realizadas_count >= max_total_operaciones: break
                res_anular = random.choice(reservas_hechas_para_anular)
                reservas_hechas_para_anular.remove(res_anular)
                f.write(f"CALL cancelar_reserva({res_anular['id']}, '{res_anular['cliente']}');\n")
                operaciones_realizadas_count += 1
                pbar_ops.update(1)
            
            pbar_ops.close()
            
            # End anulaciones timing and start consultas timing
            f.write("SET @end_anulaciones = NOW(3);\n")
            f.write("SET @start_consultas = NOW(3);\n")
            
            console.print("[bold green]✓ Anulaciones completadas[/bold green]")
            
            consultas_ejemplo_sql = [
                "SELECT COUNT(*) FROM Evento WHERE estado = 'Abierto';",
                "SELECT e.espectaculo_id, COUNT(t.id_transaccion) FROM Evento e JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id WHERE t.estado = 'compra' GROUP BY e.espectaculo_id ORDER BY RAND() LIMIT 1;",
                "SELECT * FROM Vista_Top10_espectaculos LIMIT 1;",
                "SELECT r.id_nombre, COUNT(l.ubicacion) FROM Recinto r JOIN Localidad l ON r.id_nombre = l.recinto_id GROUP BY r.id_nombre ORDER BY RAND() LIMIT 1;"
            ]
            f.write(f"\n-- Consultas ({num_consultas})\n")
            for _ in tqdm(range(num_consultas), desc="Generando consultas SQL"):
                f.write(f"{random.choice(consultas_ejemplo_sql)}\n")
            
            # End consultas timing
            f.write("SET @end_consultas = NOW(3);\n")
            f.write("SELECT TIMEDIFF(NOW(3), @start_time) as tiempo_ejecucion;\n")
            f.write("SELECT TIMEDIFF(@end_compras, @start_compras) as tiempo_compras;\n")
            f.write("SELECT TIMEDIFF(@end_reservas, @start_reservas) as tiempo_reservas;\n")
            f.write("SELECT TIMEDIFF(@end_anulaciones, @start_anulaciones) as tiempo_anulaciones;\n")
            f.write("SELECT TIMEDIFF(@end_consultas, @start_consultas) as tiempo_consultas;\n")
        
        cursor.close()
        conn.close()
        
        console.print(f"[bold green]¡Archivo SQL generado en {SIM_CONFIG['benchmark_file']}!")
        
        if Prompt.ask("\n¿Desea ejecutar el benchmark SQL ahora?", choices=["s", "n"], default="s") == "s":
            console.print("[bold blue]Ejecutando benchmark SQL (esto puede tardar)...[/bold blue]")
            mysql_cmd_str = f"mysql -sN -h {DB_CONFIG['host']} -u {DB_CONFIG['user']} -p{DB_CONFIG['password']} {DB_CONFIG['database']} < {SIM_CONFIG['benchmark_file']}"
            
            start_time_exec_bm = time.time()
            try:
                process_bm = subprocess.run(mysql_cmd_str, shell=True, capture_output=True, text=True, check=True, encoding='utf-8')
                tiempo_total_exec_bm = time.time() - start_time_exec_bm
                
                output_lines_bm = process_bm.stdout.strip().splitlines()
                tiempo_sql_reported = "No reportado"
                tiempo_compras = "No reportado"
                tiempo_reservas = "No reportado"
                tiempo_anulaciones = "No reportado"
                tiempo_consultas = "No reportado"
                
                if output_lines_bm:
                    actual_result_lines = [line.strip() for line in output_lines_bm if line.strip()]
                    
                    if len(actual_result_lines) >= 5:
                        try:
                            # The results are expected in the order they are SELECTed in the SQL script
                            # Last 5 lines correspond to:
                            # -5: tiempo_ejecucion (overall script time reported by MySQL)
                            # -4: tiempo_compras
                            # -3: tiempo_reservas
                            # -2: tiempo_anulaciones
                            # -1: tiempo_consultas
                            tiempo_sql_reported = actual_result_lines[-5]
                            tiempo_compras = actual_result_lines[-4]
                            tiempo_reservas = actual_result_lines[-3]
                            tiempo_anulaciones = actual_result_lines[-2]
                            tiempo_consultas = actual_result_lines[-1]
                        except IndexError:
                            console.print("[bold yellow]Warning: Not enough lines in MySQL output to parse all timings.[/bold yellow]")
                        except Exception as e_parse:
                             console.print(f"[bold yellow]Warning: Error parsing MySQL timing results: {e_parse}[/bold yellow]")
                    else:
                        console.print("[bold yellow]Warning: Not enough result lines from MySQL to parse timings.[/bold yellow]")
                
                console.print(f"[bold green]✓ Consultas completadas[/bold green]")
                console.print(f"[bold green]¡Benchmark completado en {tiempo_total_exec_bm:.3f} segundos (tiempo real)![/bold green]")

                total_dml_ops_bm = num_compras + num_reservas + num_anulaciones
                tps_bm = total_dml_ops_bm / tiempo_total_exec_bm if tiempo_total_exec_bm > 0 else 0
                
                table_results_bm = Table(title="Resultados del Benchmark")
                table_results_bm.add_column("Métrica", style="cyan")
                table_results_bm.add_column("Valor", style="green")
                table_results_bm.add_row("Tiempo total (real)", f"{tiempo_total_exec_bm:.3f}s")
                table_results_bm.add_row("Tiempo MySQL (script)", tiempo_sql_reported)
                table_results_bm.add_row("Tiempo Compras", tiempo_compras)
                table_results_bm.add_row("Tiempo Reservas", tiempo_reservas)
                table_results_bm.add_row("Tiempo Anulaciones", tiempo_anulaciones)
                table_results_bm.add_row("Tiempo Consultas", tiempo_consultas)
                table_results_bm.add_row("Operaciones DML Totales", str(total_dml_ops_bm))
                table_results_bm.add_row("Compras", str(num_compras))
                table_results_bm.add_row("Reservas", str(num_reservas))
                table_results_bm.add_row("Anulaciones", str(num_anulaciones))
                table_results_bm.add_row("Consultas (SELECTs)", str(num_consultas))
                table_results_bm.add_row("TPS (DML)", f"{tps_bm:.2f}")
                console.print(table_results_bm)

            except subprocess.CalledProcessError as e_bm_exec:
                console.print(f"[bold red]Error al ejecutar el benchmark SQL:[/bold red]")
                console.print(f"Stderr: {e_bm_exec.stderr}")
            except Exception as e_bm_unexpected:
                 console.print(f"[bold red]Error inesperado ejecutando benchmark: {e_bm_unexpected}[/bold red]")

    except Exception as e_gen_bm:
        console.print(f"[bold red]Error en la generación del benchmark: {e_gen_bm}[/bold red]")
        if 'conn' in locals() and conn.is_connected(): conn.rollback()
        if 'cursor' in locals(): cursor.close()
        if 'conn' in locals() and conn.is_connected(): conn.close() 