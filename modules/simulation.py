from .base import console, DB_CONFIG, MAX_TICKETS_PER_CLIENT_EVENT
import mysql.connector
import threading
import time
import random
from datetime import datetime, timedelta
from rich.prompt import Prompt
from rich.table import Table

def hilo_cliente(client_id, console, db_config_params, stop_event_client, total_users, throughput_stats):
    """Define el comportamiento de un cliente simulado que compra hasta X entradas."""
    conn = None
    cursor = None
    datos_bancarios_cliente = f"SIM_CLIENT_{client_id}_{random.randint(100000, 999999)}"
    active_reservations = []  # Track reservations for potential cancellation
    should_print = total_users <= 30  # Only print if 30 or fewer users
    operations_count = 0  # Track number of operations for throughput
    reservations_made = 0
    cancellations_made = 0

    try:
        conn = mysql.connector.connect(**db_config_params)
        conn.autocommit = False # Manage transactions manually for client actions
        cursor = conn.cursor(dictionary=True)

        cursor.execute("INSERT INTO Cliente (datos_bancarios) VALUES (%s)", (datos_bancarios_cliente,))
        conn.commit()

        target_event_info = None
        tickets_comprados_evento_actual = 0

        while not stop_event_client.is_set():
            if not target_event_info:
                cursor.execute("""
                    SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre as nombre_espectaculo,
                           GROUP_CONCAT(DISTINCT etu.tipo_usuario) as tipos_usuario_permitidos
                    FROM Evento e
                    JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo
                    JOIN Espectaculo_TipoUsuario etu ON e.espectaculo_id = etu.espectaculo_id
                    WHERE e.estado = 'Abierto'
                    GROUP BY e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre
                    ORDER BY RAND() LIMIT 1
                """)
                target_event_info = cursor.fetchone()
                if not target_event_info:
                    if stop_event_client.wait(random.uniform(3,7)): break
                    continue
                else:
                    tickets_comprados_evento_actual = 0

            if not target_event_info:
                if stop_event_client.wait(1): break
                continue

            # Process any pending cancellations
            if active_reservations and random.random() < 0.3:  # 30% chance to cancel a reservation
                res_to_cancel = random.choice(active_reservations)
                try:
                    cursor.execute("CALL cancelar_reserva(%s, %s)", (res_to_cancel['id'], datos_bancarios_cliente))
                    conn.commit()
                    active_reservations.remove(res_to_cancel)
                    operations_count += 1
                    cancellations_made += 1
                    if should_print:
                        console.print(f"[yellow]Cliente {client_id}: Cancelada reserva {res_to_cancel['id']} para '{target_event_info['nombre_espectaculo']}'.[/yellow]")
                except mysql.connector.Error as err:
                    conn.rollback()
                    if err.sqlstate == '45000':
                        active_reservations.remove(res_to_cancel)
                    continue

            # Attempt to buy/reserve tickets for the target event
            while tickets_comprados_evento_actual < MAX_TICKETS_PER_CLIENT_EVENT and not stop_event_client.is_set():
                cursor.execute("""
                    SELECT L.ubicacion
                    FROM Localidad L
                    LEFT JOIN Transaccion T ON L.ubicacion = T.ubicacion
                        AND L.fecha = T.fecha AND L.recinto_id = T.recinto_id AND L.espectaculo_id = T.espectaculo_id
                        AND T.estado IN ('compra', 'reserva')
                    WHERE L.fecha = %s AND L.recinto_id = %s AND L.espectaculo_id = %s
                    AND T.id_transaccion IS NULL
                    ORDER BY RAND() LIMIT 1
                """, (target_event_info['fecha'], target_event_info['recinto_id'], target_event_info['espectaculo_id']))
                localidad_disponible = cursor.fetchone()

                if not localidad_disponible:
                    target_event_info = None
                    if stop_event_client.wait(random.uniform(0.5,1.5)): break
                    break

                ubicacion_a_comprar = localidad_disponible['ubicacion']
                tipos_permitidos_evento_str = target_event_info.get('tipos_usuario_permitidos')
                if not tipos_permitidos_evento_str:
                    target_event_info = None
                    if stop_event_client.wait(random.uniform(0.1,0.5)): break
                    break
                
                tipo_usuario_elegido = random.choice(tipos_permitidos_evento_str.split(','))
                
                # Decide whether to make a purchase or reservation
                is_reservation = random.random() < 0.4  # 40% chance of making a reservation instead of purchase
                estado_transaccion = 'reserva' if is_reservation else 'compra'

                try:
                    cursor.execute("""
                        INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES (%s, %s, %s, %s, %s, %s, %s)
                    """, (datos_bancarios_cliente, estado_transaccion, ubicacion_a_comprar, target_event_info['fecha'],
                          target_event_info['recinto_id'], target_event_info['espectaculo_id'], tipo_usuario_elegido))
                    
                    if is_reservation:
                        cursor.execute("SELECT LAST_INSERT_ID() as id")
                        res_id = cursor.fetchone()['id']
                        active_reservations.append({
                            'id': res_id,
                            'evento': target_event_info['nombre_espectaculo']
                        })
                        reservations_made += 1
                        if should_print:
                            console.print(f"[cyan]Cliente {client_id}: Reserva {res_id} creada para '{target_event_info['nombre_espectaculo']}' (Ubic: {ubicacion_a_comprar}).[/cyan]")
                    else:
                        if should_print:
                            console.print(f"[green]Cliente {client_id}: Compra realizada para '{target_event_info['nombre_espectaculo']}' (Ubic: {ubicacion_a_comprar}).[/green]")
                    
                    conn.commit()
                    operations_count += 1
                    tickets_comprados_evento_actual += 1
                    
                    if tickets_comprados_evento_actual >= MAX_TICKETS_PER_CLIENT_EVENT:
                        if should_print:
                            console.print(f"[bold green]Cliente {client_id}: Límite de {MAX_TICKETS_PER_CLIENT_EVENT} entradas alcanzado para '{target_event_info['nombre_espectaculo']}'. Terminando.[/bold green]")
                        stop_event_client.set()
                        break

                except mysql.connector.Error as err:
                    conn.rollback()
                    if err.sqlstate == '45000' and 'Maximum ticket limit' in str(err).lower():
                        if should_print:
                            console.print(f"[bold red]Cliente {client_id}: Límite de DB ({MAX_TICKETS_PER_CLIENT_EVENT}) alcanzado para '{target_event_info['nombre_espectaculo']}'. Terminando.[/bold red]")
                        stop_event_client.set()
                        break 
                    elif err.errno == 1062:
                        pass
                    elif err.sqlstate == '45000' and ('cerrados o finalizados' in str(err).lower() or 'no existe un evento' in str(err).lower()):
                        target_event_info = None
                        break
                    else:
                        if should_print:
                            console.print(f"[red]Cliente {client_id}: Error DB al comprar para '{target_event_info['nombre_espectaculo']}' - {err}. Buscando nuevo evento.[/red]")
                        target_event_info = None 
                        break 

                if not stop_event_client.is_set():
                    if stop_event_client.wait(random.uniform(0.2, 1.0)): break

            if stop_event_client.is_set(): break

    except mysql.connector.Error as db_err:
        if conn and conn.is_connected(): conn.rollback()
    except Exception as gen_err:
        pass
    finally:
        if cursor: cursor.close()
        if conn and conn.is_connected(): conn.close()
        # Update throughput stats
        with throughput_stats['lock']:
            throughput_stats['total_operations'] += operations_count
            throughput_stats['reservations'] = throughput_stats.get('reservations', 0) + reservations_made
            throughput_stats['cancellations'] = throughput_stats.get('cancellations', 0) + cancellations_made
            throughput_stats['active_clients'] -= 1

def hilo_generador_eventos(console, db_config_params, stop_event):
    """Genera eventos periódicamente."""
    conn = None
    cursor = None
    console.print("[magenta]Generador de Eventos: Iniciado.[/magenta]")
    eventos_generados = 0
    
    try:
        conn = mysql.connector.connect(**db_config_params)
        conn.autocommit = True # Simpler for event generation
        cursor = conn.cursor(dictionary=True)

        while not stop_event.wait(random.uniform(8,15)): # Generate event every 8-15 seconds
            try:
                cursor.execute("SELECT id_espectaculo FROM Espectaculo ORDER BY RAND() LIMIT 1")
                espectaculo = cursor.fetchone()
                if not espectaculo: continue
                id_espectaculo_gen = espectaculo['id_espectaculo']

                cursor.execute("SELECT tipo_usuario FROM Espectaculo_TipoUsuario WHERE espectaculo_id = %s", (id_espectaculo_gen,))
                tipos_usuario_espectaculo = [row['tipo_usuario'] for row in cursor.fetchall()]
                if not tipos_usuario_espectaculo: continue

                cursor.execute("SELECT id_nombre, aforo_max FROM Recinto ORDER BY RAND() LIMIT 1")
                recinto = cursor.fetchone()
                if not recinto: continue
                id_recinto_gen = recinto['id_nombre']
                aforo_max_gen = recinto['aforo_max']

                fecha_inicio_evento = datetime.now() + timedelta(days=random.randint(1, 10), hours=random.randint(0,12), minutes=random.choice([0,15,30,45]))
                fecha_fin_evento = fecha_inicio_evento + timedelta(hours=random.randint(2, 4))

                cursor.execute("""
                    INSERT INTO Evento (fecha, recinto_id, espectaculo_id, estado, fecha_fin, cancelaciones)
                    VALUES (%s, %s, %s, 'Abierto', %s, 0)
                """, (fecha_inicio_evento, id_recinto_gen, id_espectaculo_gen, fecha_fin_evento))

                localidades_a_crear_gen = min(aforo_max_gen, random.randint(50, 300)) # Smaller, more frequent events
                localidades_batch_gen = [(loc_num, fecha_inicio_evento, id_recinto_gen, id_espectaculo_gen) for loc_num in range(1, localidades_a_crear_gen + 1)]
                if localidades_batch_gen:
                    cursor.executemany("INSERT INTO Localidad (ubicacion, fecha, recinto_id, espectaculo_id) VALUES (%s, %s, %s, %s)", localidades_batch_gen)

                costes_batch_gen = []
                rangos_precios_evt_gen = {'Jubilado': (10,30), 'Adulto': (20,60), 'Infantil': (5,25), 'Parado': (10,30), 'Bebe': (1,10)}
                for loc_num in range(1, localidades_a_crear_gen + 1):
                    for tipo_usr in tipos_usuario_espectaculo:
                        min_p, max_p = rangos_precios_evt_gen.get(tipo_usr, (10,50))
                        costes_batch_gen.append((loc_num, fecha_inicio_evento, id_recinto_gen, id_espectaculo_gen, tipo_usr, random.randint(min_p, max_p)))
                if costes_batch_gen:
                    cursor.executemany("INSERT INTO Coste (ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario, precio) VALUES (%s, %s, %s, %s, %s, %s)", costes_batch_gen)
                conn.commit()
                eventos_generados += 1
                console.print(f"[magenta]Generador: Evento #{eventos_generados} creado (E:{id_espectaculo_gen}, R:{id_recinto_gen}, F:{fecha_inicio_evento.strftime('%Y-%m-%d %H:%M')})[/magenta]")

            except mysql.connector.Error as err_gen_loop:
                if conn and conn.is_connected(): conn.rollback()
                if err_gen_loop.errno == 1062: pass
                else: console.print(f"[red]Generador (loop): Error DB - {err_gen_loop}[/red]")
            except Exception as e_gen_loop:
                console.print(f"[red]Generador (loop): Error inesperado - {e_gen_loop}[/red]")
                pass

    except mysql.connector.Error as err_gen_main:
        console.print(f"[red]Generador: Error de conexión principal - {err_gen_main}[/red]")
    except Exception as e_gen_main:
        console.print(f"[red]Generador: Error fatal - {e_gen_main}[/red]")
    finally:
        if cursor: cursor.close()
        if conn and conn.is_connected(): conn.close()
        console.print(f"[magenta]Generador de Eventos: Detenido. Total eventos generados: {eventos_generados}[/magenta]")

def simular_usuarios(num_usuarios_concurrentes, console, db_config_params):
    """Orquesta la simulación continua de clientes y la generación de eventos."""
    active_client_threads_info = []
    next_client_id_counter = 0
    start_time = time.time()

    # Initialize throughput statistics
    throughput_stats = {
        'total_operations': 0,
        'reservations': 0,
        'cancellations': 0,
        'active_clients': 0,
        'lock': threading.Lock()
    }

    stop_event_generator = threading.Event()
    event_thread = threading.Thread(target=hilo_generador_eventos, args=(console, db_config_params, stop_event_generator), name="EventGeneratorThread")
    event_thread.daemon = True
    event_thread.start()

    def create_and_start_client():
        nonlocal next_client_id_counter
        next_client_id_counter += 1
        client_id = next_client_id_counter
        stop_ev_client = threading.Event()
        thread = threading.Thread(
            target=hilo_cliente, 
            args=(client_id, console, db_config_params, stop_ev_client, num_usuarios_concurrentes, throughput_stats),
            name=f"ClientThread_{client_id}"
        )
        thread.daemon = True
        active_client_threads_info.append({'id': client_id, 'thread': thread, 'stop_event': stop_ev_client})
        with throughput_stats['lock']:
            throughput_stats['active_clients'] += 1
        thread.start()
        if num_usuarios_concurrentes <= 30:
            console.print(f"[purple]Simulador: Iniciando cliente {client_id}. Total activos: {len(active_client_threads_info)} (Deseado: {num_usuarios_concurrentes}).[/purple]")

    for _ in range(num_usuarios_concurrentes):
        create_and_start_client()

    try:
        while True:
            # Rebuild the list of active threads, removing dead ones
            updated_active_threads_info = []
            for client_info in active_client_threads_info:
                if client_info['thread'].is_alive():
                    updated_active_threads_info.append(client_info)
                else:
                    if num_usuarios_concurrentes <= 30:
                        console.print(f"[purple]Simulador: Cliente {client_info['id']} finalizado.[/purple]")
            active_client_threads_info = updated_active_threads_info
            
            # Replace finished threads to maintain concurrency
            while len(active_client_threads_info) < num_usuarios_concurrentes:
                create_and_start_client()

            if stop_event_generator.is_set(): 
                break 
            time.sleep(1) 

    except KeyboardInterrupt:
        console.print("\n[bold red]Interrupción por teclado detectada. Deteniendo simulación...[/bold red]")
    finally:
        console.print("[bold blue]Señalando a hilos de clientes que se detengan...[/bold blue]")
        for client_info in active_client_threads_info:
            client_info['stop_event'].set()
        
        # Wait for all client threads to finish
        console.print("[bold blue]Esperando a que los clientes terminen...[/bold blue]")
        for client_info in active_client_threads_info:
            client_info['thread'].join(timeout=5)  # Wait up to 5 seconds for each client
        
        console.print("[bold blue]Señalando al generador de eventos que se detenga...[/bold blue]")
        stop_event_generator.set()
        event_thread.join(timeout=10)
        
        # Calculate and display throughput statistics
        end_time = time.time()
        total_time = end_time - start_time
        with throughput_stats['lock']:
            total_ops = throughput_stats['total_operations']
            total_reservations = throughput_stats.get('reservations', 0)
            total_cancellations = throughput_stats.get('cancellations', 0)
        
        if total_time > 0:
            throughput = total_ops / total_time
            console.print("\n[bold green]Estadísticas de la simulación:[/bold green]")
            console.print(f"Tiempo total de ejecución: {total_time:.2f} segundos")
            console.print(f"Operaciones totales realizadas: {total_ops}")
            console.print(f"Reservas realizadas: {total_reservations}")
            console.print(f"Anulaciones realizadas: {total_cancellations}")
            console.print(f"Throughput promedio: {throughput:.2f} operaciones/segundo")
        
        # Clean up any remaining database connections
        try:
            conn = mysql.connector.connect(**db_config_params)
            cursor = conn.cursor()
            cursor.execute("SHOW PROCESSLIST")
            processes = cursor.fetchall()
            for process in processes:
                if process[3] == db_config_params['database']:  # If process is using our database
                    cursor.execute(f"KILL {process[0]}")
            cursor.close()
            conn.close()
        except Exception as e:
            console.print(f"[yellow]Advertencia: No se pudieron limpiar todas las conexiones: {e}[/yellow]")
        
        console.print("[bold green]Simulación y generador de eventos detenidos.[/bold green]")
        return  # Add return statement to exit the function properly

def simular():
    """Interfaz para configurar y ejecutar la simulación continua."""
    try:
        num_concurrentes = int(Prompt.ask("\nNúmero de clientes concurrentes a simular", default="3"))
        if num_concurrentes <=0: 
            console.print("[red]Debe ser al menos 1 cliente concurrente.")
            return

        console.print(f"\n[bold yellow]Iniciando simulación con {num_concurrentes} clientes concurrentes... (Ctrl+C para detener)[/bold yellow]")
        db_params = DB_CONFIG.copy()
        simular_usuarios(num_concurrentes, console, db_params)
        
    except ValueError:
        console.print("[bold red]Error: El número de usuarios debe ser un entero.")
    except Exception as e:
        console.print(f"[bold red]Error inesperado durante la configuración de la simulación: {e}[/bold red]")
    finally:
        console.print("\n[bold blue]Simulación finalizada o interrumpida.[/bold blue]")
        return  # Add return statement to exit the function properly 