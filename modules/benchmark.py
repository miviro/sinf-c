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
        num_consultas = int(Prompt.ask("Número de consultas a generar", default="300"))
        
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
            ORDER BY RAND() 
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
        
        # Dictionary to track transactions per client (both purchases and reservations)
        transacciones_por_cliente = {cliente: 0 for cliente in clientes_bm}
        
        console.print("[bold blue]Generando archivo SQL para benchmark...")
        
        with open(SIM_CONFIG['benchmark_file'], 'w', encoding='utf-8') as f:
            f.write("SET autocommit=0;\n")
            f.write("SET @start_time = NOW(3);\n\n") # Use NOW(3) for millisecond precision if supported
            
            if clientes_bm:
                f.write("-- Crear clientes para el benchmark\n")
                f.write("INSERT INTO Cliente (datos_bancarios) VALUES\n")
                f.write(",\n".join([f"('{cl}')" for cl in clientes_bm]))
                f.write(";\n\n")
            
            operaciones_realizadas_count = 0
            max_total_operaciones = num_compras + num_reservas + num_anulaciones
            reservas_hechas_para_anular = [] 
            next_sim_trans_id = 1

            pbar_ops = tqdm(total=max_total_operaciones, desc="Generando operaciones SQL")

            # COMPRAS
            for _ in range(num_compras):
                if not localidades_por_evento or operaciones_realizadas_count >= max_total_operaciones: break
                
                # Find a client that hasn't reached the limit
                clientes_disponibles = [cl for cl in clientes_bm if transacciones_por_cliente[cl] < 10]
                if not clientes_disponibles:
                    console.print("[yellow]Todos los clientes han alcanzado el límite de 10 transacciones[/yellow]")
                    break
                    
                cliente_seleccionado = random.choice(clientes_disponibles)
                
                evento_key = random.choice(list(localidades_por_evento.keys()))
                if not localidades_por_evento[evento_key]:
                    del localidades_por_evento[evento_key]
                    continue
                ubicacion, tipos_usr = localidades_por_evento[evento_key].pop(0)
                if not localidades_por_evento[evento_key]: del localidades_por_evento[evento_key]
                fecha_sql, recinto_sql, espectaculo_sql = evento_key
                
                f.write(f"INSERT INTO Transaccion (id_transaccion, datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario) VALUES ({next_sim_trans_id}, '{cliente_seleccionado}', 'compra', {ubicacion}, '{fecha_sql.strftime('%Y-%m-%d %H:%M:%S')}', '{recinto_sql}', {espectaculo_sql}, '{random.choice(tipos_usr)}');\n")
                transacciones_por_cliente[cliente_seleccionado] += 1
                next_sim_trans_id+=1
                operaciones_realizadas_count += 1
                pbar_ops.update(1)

            # RESERVAS
            for _ in range(num_reservas):
                if not localidades_por_evento or operaciones_realizadas_count >= max_total_operaciones: break
                
                # Find a client that hasn't reached the limit
                clientes_disponibles = [cl for cl in clientes_bm if transacciones_por_cliente[cl] < 10]
                if not clientes_disponibles:
                    console.print("[yellow]Todos los clientes han alcanzado el límite de 10 transacciones[/yellow]")
                    break
                    
                cliente_seleccionado = random.choice(clientes_disponibles)
                
                evento_key = random.choice(list(localidades_por_evento.keys()))
                if not localidades_por_evento[evento_key]: 
                    del localidades_por_evento[evento_key]
                    continue
                ubicacion, tipos_usr = localidades_por_evento[evento_key].pop(0)
                if not localidades_por_evento[evento_key]: del localidades_por_evento[evento_key]
                fecha_sql, recinto_sql, espectaculo_sql = evento_key

                f.write(f"INSERT INTO Transaccion (id_transaccion, datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario) VALUES ({next_sim_trans_id}, '{cliente_seleccionado}', 'reserva', {ubicacion}, '{fecha_sql.strftime('%Y-%m-%d %H:%M:%S')}', '{recinto_sql}', {espectaculo_sql}, '{random.choice(tipos_usr)}');\n")
                transacciones_por_cliente[cliente_seleccionado] += 1
                reservas_hechas_para_anular.append({'id': next_sim_trans_id, 'cliente': cliente_seleccionado})
                next_sim_trans_id+=1
                operaciones_realizadas_count += 1
                pbar_ops.update(1)

            # ANULACIONES
            for _ in range(num_anulaciones):
                if not reservas_hechas_para_anular or operaciones_realizadas_count >= max_total_operaciones: break
                res_anular = random.choice(reservas_hechas_para_anular)
                reservas_hechas_para_anular.remove(res_anular)
                f.write(f"CALL cancelar_reserva({res_anular['id']}, '{res_anular['cliente']}');\n")
                operaciones_realizadas_count += 1
                pbar_ops.update(1)
            
            pbar_ops.close()
            
            consultas_ejemplo_sql = [
                "SELECT COUNT(*) FROM Evento WHERE estado = 'Abierto';",
                "SELECT e.espectaculo_id, COUNT(t.id_transaccion) FROM Evento e JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id WHERE t.estado = 'compra' GROUP BY e.espectaculo_id ORDER BY RAND() LIMIT 1;",
                "SELECT * FROM Vista_Top10_espectaculos LIMIT 1;",
                "SELECT r.id_nombre, COUNT(l.ubicacion) FROM Recinto r JOIN Localidad l ON r.id_nombre = l.recinto_id GROUP BY r.id_nombre ORDER BY RAND() LIMIT 1;"
            ]
            f.write(f"\n-- Consultas ({num_consultas})\n")
            for _ in tqdm(range(num_consultas), desc="Generando consultas SQL"):
                f.write(f"{random.choice(consultas_ejemplo_sql)}\n")
            
            f.write("SELECT TIMEDIFF(NOW(3), @start_time) as tiempo_ejecucion;\n")
        
        cursor.close()
        conn.close()
        
        console.print(f"[bold green]¡Archivo SQL generado en {SIM_CONFIG['benchmark_file']}!")
        
        if Prompt.ask("\n¿Desea ejecutar el benchmark SQL ahora?", choices=["s", "n"], default="s") == "s":
            console.print("[bold blue]Ejecutando benchmark SQL (esto puede tardar)...[/bold blue]")
            mysql_cmd_str = f"mysql -h {DB_CONFIG['host']} -u {DB_CONFIG['user']} -p{DB_CONFIG['password']} {DB_CONFIG['database']} < {SIM_CONFIG['benchmark_file']}"
            
            start_time_exec_bm = time.time()
            try:
                process_bm = subprocess.run(mysql_cmd_str, shell=True, capture_output=True, text=True, check=True, encoding='utf-8')
                tiempo_total_exec_bm = time.time() - start_time_exec_bm
                
                output_lines_bm = process_bm.stdout.strip().splitlines()
                tiempo_sql_reported = "No reportado"
                if output_lines_bm:
                    for line_bm in reversed(output_lines_bm):
                        if 'tiempo_ejecucion' in line_bm: continue
                        if line_bm.strip(): tiempo_sql_reported = line_bm.strip(); break
                
                console.print(f"[bold green]¡Benchmark completado en {tiempo_total_exec_bm:.3f} segundos (tiempo real)![/bold green]")
                console.print(f"[bold green]Tiempo reportado por MySQL: {tiempo_sql_reported}[/bold green]")

                total_dml_ops_bm = num_compras + num_reservas + num_anulaciones
                tps_bm = total_dml_ops_bm / tiempo_total_exec_bm if tiempo_total_exec_bm > 0 else 0
                
                table_results_bm = Table(title="Resultados del Benchmark")
                table_results_bm.add_column("Métrica", style="cyan")
                table_results_bm.add_column("Valor", style="green")
                table_results_bm.add_row("Tiempo total (real)", f"{tiempo_total_exec_bm:.3f}s")
                table_results_bm.add_row("Tiempo MySQL (script)", tiempo_sql_reported)
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