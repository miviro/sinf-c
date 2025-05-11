import mysql.connector
import subprocess
from tqdm import tqdm
import time
import random
import numpy as np  # Add NumPy for faster random number generation
from rich.console import Console
from rich.panel import Panel
from rich.prompt import Prompt
from rich import print as rprint
from rich.table import Table
from datetime import datetime, timedelta # Added timedelta
import threading
from tabulate import tabulate

# Configuración de la base de datos
DB_CONFIG = {
    'host': 'localhost',
    'user': 'admin',
    'password': '1234',
    'database': 'taquilla'
}

# Configuración de la simulación
SIM_CONFIG = {
    'stop_on_error': False,  # Cambiar a False para continuar la simulación después de errores
    'benchmark_file': 'benchmark.sql'  # Archivo para el benchmark SQL
}

MAX_TICKETS_PER_CLIENT_EVENT = 10 # Max tickets a client will try to buy for one event

def reset_database():
    """Reinicia la base de datos a su estado inicial"""
    console = Console()
    with console.status("[bold green]Reiniciando la base de datos...") as status:
        try:
            # Conectar sin seleccionar base de datos
            conn = mysql.connector.connect(
                host=DB_CONFIG['host'],
                user=DB_CONFIG['user'],
                password=DB_CONFIG['password']
            )
            cursor = conn.cursor()
            
            # Eliminar y recrear la base de datos
            cursor.execute("DROP DATABASE IF EXISTS taquilla")
            cursor.execute("CREATE DATABASE taquilla")
            cursor.close()
            conn.close()
            
            # Ejecutar el script SQL
            subprocess.run('mysql -u admin -p1234 taquilla < taquilla.sql', shell=True, check=True)
            console.print("[bold green]¡Base de datos reiniciada con éxito!")
        except Exception as e:
            console.print(f"[bold red]Error al reiniciar la base de datos: {e}")

def poblar_base_datos():
    """Pobla la base de datos con datos de prueba"""
    console = Console()
    
    try:
        # Preguntar número total de localidades
        total_localidades = int(Prompt.ask("\nNúmero total de localidades a generar", default="1000"))
        if total_localidades <= 0:
            console.print("[bold red]El número de localidades debe ser mayor que 0")
            return
        
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor()
        
        # Poblar Espectáculos
        console.print("\n[bold blue]Poblando Espectáculos...")
        espectaculos = [
            (1, 'Concierto de Rock', 'Musical'),
            (2, 'Partido de Fútbol', 'Deportivo'),
            (3, 'Conferencia Científica', 'Educativo'),
            (4, 'Festival de Jazz', 'Musical'),
            (5, 'Torneo de Baloncesto', 'Deportivo')
        ]
        
        for esp in tqdm(espectaculos, desc="Insertando Espectáculos"):
            try:
                cursor.execute("""
                    INSERT INTO Espectaculo (id_espectaculo, nombre, tipo) 
                    VALUES (%s, %s, %s)
                """, esp)
            except mysql.connector.Error as err:
                if err.errno == 1062:  # Duplicate entry error
                    continue
                raise
        
        # Poblar Tipos de Usuarios
        console.print("\n[bold blue]Poblando Tipos de Usuarios...")
        tipos_usuarios = ['Jubilado', 'Adulto', 'Infantil', 'Parado', 'Bebe']
        for tipo in tqdm(tipos_usuarios, desc="Insertando Tipos de Usuarios"):
            try:
                cursor.execute("""
                    INSERT INTO TiposDeUsuarios (tipo_usuario) 
                    VALUES (%s)
                """, (tipo,))
            except mysql.connector.Error as err:
                if err.errno == 1062:  # Duplicate entry error
                    continue
                raise
        
        # Poblar Espectaculo_TipoUsuario
        console.print("\n[bold blue]Poblando Relaciones Espectáculo-TipoUsuario...")
        for esp_id in tqdm(range(1, 6), desc="Creando Relaciones"):
            # Seleccionar aleatoriamente entre 2 y 4 tipos de usuario para cada espectáculo
            num_tipos = random.randint(2, 4)
            tipos_seleccionados = random.sample(tipos_usuarios, num_tipos)
            for tipo in tipos_seleccionados:
                try:
                    cursor.execute("""
                        INSERT INTO Espectaculo_TipoUsuario (espectaculo_id, tipo_usuario) 
                        VALUES (%s, %s)
                    """, (esp_id, tipo))
                except mysql.connector.Error as err:
                    if err.errno == 1062:  # Duplicate entry error
                        continue
                    raise
        
        # Poblar Recintos
        console.print("\n[bold blue]Poblando Recintos...")
        recintos = [
            ('Estadio Principal', 50000),
            ('Auditorio Municipal', 2000),
            ('Palacio de Congresos', 1000),
            ('Arena Deportiva', 15000),
            ('Teatro Municipal', 800)
        ]
        
        for rec in tqdm(recintos, desc="Insertando Recintos"):
            try:
                cursor.execute("""
                    INSERT INTO Recinto (id_nombre, aforo_max) 
                    VALUES (%s, %s)
                """, rec)
            except mysql.connector.Error as err:
                if err.errno == 1062:  # Duplicate entry error
                    continue
                raise
        
        # Poblar Eventos
        console.print("\n[bold blue]Poblando Eventos...")
        
        num_dates_needed = max(5, (total_localidades // 50000) + 1)
        fechas_str_list = [] # Changed name to avoid confusion
        current_year = datetime.now().year
        for month in range(1, 13): # Iterate through all months
            for day in [1, 5, 10, 15, 20, 25]: # Fewer events per month initially for faster setup
                if len(fechas_str_list) >= num_dates_needed * 2 : # Generate a bit more for variety
                    break
                # Alternate years to ensure future dates if current month/day has passed
                year_to_use = current_year if datetime(current_year, month, day) > datetime.now() else current_year + 1
                fechas_str_list.append(f'{year_to_use}-{month:02d}-{day:02d}')
            if len(fechas_str_list) >= num_dates_needed * 2:
                break
        if not fechas_str_list: # Ensure at least some dates
            fechas_str_list.append(f'{current_year+1}-01-01')

        console.print(f"[bold blue]Usando {len(fechas_str_list)} fechas base para los eventos")
        
        eventos_creados = []
        for fecha_str in tqdm(fechas_str_list, desc="Creando Eventos"):
            espectaculos_shuffled = list(range(1, 6))
            random.shuffle(espectaculos_shuffled)
            
            for i, (rec_id, _) in enumerate(recintos):
                if i < len(espectaculos_shuffled):
                    esp_id = espectaculos_shuffled[i]
                    evento_datetime_start = datetime.strptime(fecha_str + f" {random.randint(9,20):02d}:{random.choice([0,30]):02d}:00", '%Y-%m-%d %H:%M:%S')
                    evento_datetime_end = evento_datetime_start + timedelta(hours=random.randint(2,3))
                    try:
                        cursor.execute("""
                            INSERT INTO Evento (fecha, recinto_id, espectaculo_id, estado, fecha_fin, cancelaciones)
                            VALUES (%s, %s, %s, %s, %s, %s)
                        """, (evento_datetime_start, rec_id, esp_id, 'Abierto', evento_datetime_end, 0))
                        eventos_creados.append((evento_datetime_start, rec_id, esp_id))
                    except mysql.connector.Error as err:
                        if err.errno == 1062:
                            continue
                        # else: console.print(f"DB Error: {err}") # Optional: log other errors
                        # For other errors, it might be better to raise them if they are unexpected.
                        # raise
        
        conn.commit()
        
        if not eventos_creados:
            console.print("[bold red]No se pudieron crear eventos. Verificar la base de datos.")
            return
            
        console.print(f"[bold green]Se crearon {len(eventos_creados)} eventos exitosamente")
        
        console.print("\n[bold blue]Poblando Localidades y Costes...")
        
        eventos_data_for_localidades = []
        total_aforo_disponible = 0
        for fecha, rec_id, esp_id in eventos_creados:
            aforo = next(afr for r_id, afr in recintos if r_id == rec_id)
            eventos_data_for_localidades.append((fecha, rec_id, esp_id, aforo))
            total_aforo_disponible += aforo
        
        console.print(f"[bold blue]Aforo total disponible: {total_aforo_disponible}, necesario: {total_localidades}")
        
        if total_aforo_disponible < total_localidades:
            console.print(f"[bold red]¡ADVERTENCIA! No hay suficiente aforo total para generar {total_localidades} localidades.")
            console.print(f"[bold red]Se generará el máximo posible ({total_aforo_disponible}).")
        
        eventos_count = len(eventos_data_for_localidades)
        # max_localidades_por_evento = max(5000, (total_localidades // max(1,eventos_count)) * 2 if eventos_count > 0 else 5000)
        # console.print(f"[bold blue]Eventos disponibles: {eventos_count}")
        # console.print(f"[bold blue]Usando {max_localidades_por_evento} localidades por evento como máximo")
        
        rangos_precios = {
            'Jubilado': (15, 45),
            'Adulto': (30, 80),
            'Infantil': (10, 40),
            'Parado': (15, 45),
            'Bebe': (5, 25)
        }
        
        batch_size = 10000
        localidades_generadas = 0
        
        random.shuffle(eventos_data_for_localidades)
        conn.autocommit = False
        
        insert_localidad_stmt = """
            INSERT INTO Localidad (ubicacion, fecha, recinto_id, espectaculo_id)
            VALUES (%s, %s, %s, %s)
        """
        insert_coste_stmt = """
            INSERT INTO Coste (ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario, precio)
            VALUES (%s, %s, %s, %s, %s, %s)
        """
        
        localidades_por_evento_count = {}
        
        with tqdm(total=min(total_localidades, total_aforo_disponible), desc="Generando localidades") as pbar:
            for fecha_ev, rec_id_ev, esp_id_ev, aforo_ev in eventos_data_for_localidades:
                if localidades_generadas >= total_localidades: break

                evento_key = (fecha_ev, rec_id_ev, esp_id_ev)
                cursor.execute("SELECT tipo_usuario FROM Espectaculo_TipoUsuario WHERE espectaculo_id = %s", (esp_id_ev,))
                tipos_permitidos_db = [row[0] for row in cursor.fetchall()]
                if not tipos_permitidos_db: continue

                precios_calculados_evento = {}
                for tipo_usr in tipos_permitidos_db:
                    min_precio, max_precio = rangos_precios[tipo_usr]
                    precios_unicos = sorted(list(set([random.randint(min_precio, max_precio +1) for _ in range(10)])))
                    while len(precios_unicos) < 2 : precios_unicos.append(random.randint(min_precio, max_precio+1))
                    precios_calculados_evento[tipo_usr] = precios_unicos[:random.randint(1, min(4, len(precios_unicos)))]

                # Determine how many localities to generate for THIS event
                # Distribute remaining needed localities somewhat evenly among remaining events
                # but cap by aforo_ev
                localidades_restantes_total = total_localidades - localidades_generadas
                num_eventos_restantes = max(1, eventos_count - eventos_data_for_localidades.index((fecha_ev, rec_id_ev, esp_id_ev, aforo_ev)))
                
                ideal_para_este_evento = localidades_restantes_total // num_eventos_restantes
                localidades_a_generar_para_este_evento = min(aforo_ev, ideal_para_este_evento, localidades_restantes_total)
                if localidades_a_generar_para_este_evento <=0 and localidades_restantes_total > 0 : # if not enough from ideal, take what's possible
                    localidades_a_generar_para_este_evento = min(aforo_ev, localidades_restantes_total)
                if localidades_a_generar_para_este_evento <=0 : continue
                
                localidades_batch_data = []
                costes_batch_data = []

                for ubicacion_num in range(1, localidades_a_generar_para_este_evento + 1):
                    if localidades_generadas >= total_localidades: break
                    localidades_batch_data.append((ubicacion_num, fecha_ev, rec_id_ev, esp_id_ev))
                    for tipo_usr_coste in tipos_permitidos_db:
                        if precios_calculados_evento[tipo_usr_coste]:
                            precio_final = random.choice(precios_calculados_evento[tipo_usr_coste])
                            costes_batch_data.append((ubicacion_num, fecha_ev, rec_id_ev, esp_id_ev, tipo_usr_coste, precio_final))
                if localidades_batch_data:
                    try:
                        cursor.executemany(insert_localidad_stmt, localidades_batch_data)
                        if costes_batch_data:
                             cursor.executemany(insert_coste_stmt, costes_batch_data)
                        conn.commit()
                        localidades_generadas_este_batch = len(localidades_batch_data)
                        localidades_generadas += localidades_generadas_este_batch
                        localidades_por_evento_count[evento_key] = localidades_por_evento_count.get(evento_key, 0) + localidades_generadas_este_batch
                        pbar.update(localidades_generadas_este_batch)
                    except mysql.connector.Error as err_batch:
                        conn.rollback()
                        # if err_batch.errno == 1062: pass # console.print(f"[yellow]Skipping duplicate in batch for event {evento_key}[/yellow]")
                        # else: console.print(f"[red]DB Error during batch insert for {evento_key}: {err_batch}[/red]")
                if localidades_generadas >= total_localidades: break
        
        conn.autocommit = True
        console.print(f"\n[bold green]¡Base de datos poblada con éxito! Se generaron {localidades_generadas} localidades.")
        
    except Exception as e:
        console.print(f"[bold red]Error al poblar la base de datos: {e}")
        if 'conn' in locals() and conn.is_connected():
            conn.rollback()
            conn.autocommit = True
    finally:
        if 'cursor' in locals():
            cursor.close()
        if 'conn' in locals() and conn.is_connected():
            conn.close()

def ver_evento():
    """Muestra los detalles de un evento específico"""
    console = Console()
    conn = None
    cursor = None
    
    try:
        # Intentar conectar con reintentos
        max_retries = 3
        retry_delay = 1
        for attempt in range(max_retries):
            try:
                conn = mysql.connector.connect(**DB_CONFIG)
                cursor = conn.cursor(dictionary=True)
                break
            except mysql.connector.Error as err:
                if attempt < max_retries - 1:
                    console.print(f"[yellow]Reintentando conexión ({attempt + 1}/{max_retries})...[/yellow]")
                    time.sleep(retry_delay)
                    retry_delay *= 2
                else:
                    raise
        
        # Obtener lista de eventos disponibles con estadísticas de ocupación
        cursor.execute("""
            SELECT 
                e.fecha,
                e.recinto_id,
                e.espectaculo_id,
                esp.nombre as nombre_espectaculo,
                r.id_nombre as nombre_recinto,
                COUNT(l.ubicacion) as total_localidades,
                SUM(CASE WHEN t.estado = 'compra' THEN 1 ELSE 0 END) as compradas,
                SUM(CASE WHEN t.estado = 'reserva' THEN 1 ELSE 0 END) as reservadas,
                e.cancelaciones,
                GROUP_CONCAT(DISTINCT etu.tipo_usuario) as tipos_usuario_permitidos
            FROM Evento e
            JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo
            JOIN Recinto r ON e.recinto_id = r.id_nombre
            JOIN Localidad l ON e.fecha = l.fecha 
                AND e.recinto_id = l.recinto_id 
                AND e.espectaculo_id = l.espectaculo_id
            LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion 
                AND l.fecha = t.fecha 
                AND l.recinto_id = t.recinto_id 
                AND l.espectaculo_id = t.espectaculo_id
            LEFT JOIN Espectaculo_TipoUsuario etu ON e.espectaculo_id = etu.espectaculo_id
            GROUP BY e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, r.id_nombre, e.cancelaciones
            ORDER BY e.fecha, esp.nombre
        """)
        eventos = cursor.fetchall()
        
        if not eventos:
            console.print("[bold red]No hay eventos disponibles en la base de datos.")
            return
        
        # Mostrar lista de eventos
        table = Table(title="Eventos Disponibles")
        table.add_column("Nº", style="cyan")
        table.add_column("Fecha", style="green")
        table.add_column("Espectáculo", style="yellow")
        table.add_column("Recinto", style="magenta")
        table.add_column("Ocupación", style="blue")
        table.add_column("Reservas", style="yellow")
        table.add_column("Cancelaciones", style="red")
        table.add_column("Tipos Usuario", style="cyan")
        
        for i, evento in enumerate(eventos, 1):
            total = evento['total_localidades']
            ocupacion = ((evento['compradas'] + evento['reservadas']) / total * 100) if total > 0 else 0
            reservas = (evento['reservadas'] / total * 100) if total > 0 else 0
            
            fecha_str = evento['fecha'].strftime('%Y-%m-%d %H:%M:%S') if isinstance(evento['fecha'], datetime) else str(evento['fecha'])
            
            table.add_row(
                str(i),
                fecha_str,
                evento['nombre_espectaculo'],
                evento['nombre_recinto'],
                f"{ocupacion:.1f}%",
                f"{reservas:.1f}%",
                str(evento['cancelaciones']),
                evento['tipos_usuario_permitidos'] or "N/A"
            )
        
        console.print(table)
        
        # Seleccionar evento
        opcion = Prompt.ask("\nSeleccione el número del evento a ver", choices=[str(i) for i in range(1, len(eventos) + 1)])
        evento_seleccionado = eventos[int(opcion) - 1]
        
        # Obtener estadísticas de localidades
        cursor.execute("""
            SELECT 
                COUNT(*) as total_localidades,
                SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as libres,
                SUM(CASE WHEN t.estado = 'reserva' THEN 1 ELSE 0 END) as reservadas,
                SUM(CASE WHEN t.estado = 'compra' THEN 1 ELSE 0 END) as compradas
            FROM Localidad l
            LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion 
                AND l.fecha = t.fecha 
                AND l.recinto_id = t.recinto_id 
                AND l.espectaculo_id = t.espectaculo_id
            WHERE l.fecha = %s AND l.recinto_id = %s AND l.espectaculo_id = %s
        """, (evento_seleccionado['fecha'], evento_seleccionado['recinto_id'], evento_seleccionado['espectaculo_id']))
        
        stats_evento = cursor.fetchone()
        
        # Obtener beneficios del evento
        cursor.execute("""
            SELECT beneficios, beneficio_total
            FROM Vista_Beneficios_Evento
            WHERE fecha = %s AND recinto_id = %s AND espectaculo_id = %s
        """, (evento_seleccionado['fecha'], evento_seleccionado['recinto_id'], evento_seleccionado['espectaculo_id']))
        
        beneficios = cursor.fetchone()
        
        # Mostrar estadísticas
        console.print("\n[bold blue]Estadísticas del Evento:")
        console.print(f"Total de localidades: {stats_evento['total_localidades']}")
        console.print(f"Localidades libres: {stats_evento['libres']}")
        console.print(f"Localidades reservadas: {stats_evento['reservadas']}")
        console.print(f"Localidades compradas: {stats_evento['compradas']}")
        console.print(f"Cancelaciones: {evento_seleccionado['cancelaciones']}")
        if beneficios:
            console.print(f"Beneficios actuales: {beneficios['beneficios']}€")
            console.print(f"Beneficio total potencial: {beneficios['beneficio_total']}€")
        
        # Obtener y mostrar precios por tipo de usuario
        cursor.execute("""
            SELECT DISTINCT c.tipo_usuario, c.precio
            FROM Coste c
            WHERE c.fecha = %s AND c.recinto_id = %s AND c.espectaculo_id = %s
            ORDER BY c.tipo_usuario, c.precio
        """, (evento_seleccionado['fecha'], evento_seleccionado['recinto_id'], evento_seleccionado['espectaculo_id']))
        
        precios = cursor.fetchall()
        
        # Agrupar precios por tipo de usuario
        precios_por_tipo = {}
        for precio_item in precios:
            if precio_item['tipo_usuario'] not in precios_por_tipo:
                precios_por_tipo[precio_item['tipo_usuario']] = []
            precios_por_tipo[precio_item['tipo_usuario']].append(precio_item['precio'])
        
        # Mostrar precios
        console.print("\n[bold blue]Precios por Tipo de Usuario:")
        for tipo, precios_list in precios_por_tipo.items():
            console.print(f"\n[bold yellow]{tipo}:")
            for i, precio_val in enumerate(precios_list, 1):
                console.print(f"  Precio {i}: {precio_val}€")
        
    except Exception as e:
        console.print(f"[bold red]Error al mostrar el evento: {e}")
    finally:
        if cursor:
            cursor.close()
        if conn and conn.is_connected():
            conn.close()

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

def simular():
    """Interfaz para configurar y ejecutar la simulación continua."""
    console = Console()
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

def generar_benchmark_sql():
    """Genera un archivo SQL con operaciones para benchmark y lo ejecuta"""
    console = Console()
    
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

        num_clientes_bm = 1000
        clientes_bm = [f"BENCH_{i:04d}" for i in range(1, num_clientes_bm + 1)]
        
        console.print("[bold blue]Generando archivo SQL para benchmark...")
        
        with open(SIM_CONFIG['benchmark_file'], 'w', encoding='utf-8') as f:
            f.write("SET autocommit=0;\\n")
            f.write("START TRANSACTION;\\n\\n")
            f.write("SET @start_time = NOW(3);\\n\\n") # Use NOW(3) for millisecond precision if supported
            
            if clientes_bm:
                f.write("-- Crear clientes para el benchmark\\n")
                f.write("INSERT INTO Cliente (datos_bancarios) VALUES\\n")
                f.write(",\\n".join([f"('{cl}')" for cl in clientes_bm]))
                f.write(";\\n\\n")
            
            operaciones_realizadas_count = 0
            max_total_operaciones = num_compras + num_reservas + num_anulaciones
            reservas_hechas_para_anular = [] 
            next_sim_trans_id = 1

            pbar_ops = tqdm(total=max_total_operaciones, desc="Generando operaciones SQL")

            # COMPRAS
            for _ in range(num_compras):
                if not localidades_por_evento or operaciones_realizadas_count >= max_total_operaciones: break
                evento_key = random.choice(list(localidades_por_evento.keys()))
                if not localidades_por_evento[evento_key]:
                    del localidades_por_evento[evento_key]
                    continue
                ubicacion, tipos_usr = localidades_por_evento[evento_key].pop(0)
                if not localidades_por_evento[evento_key]: del localidades_por_evento[evento_key]
                fecha_sql, recinto_sql, espectaculo_sql = evento_key
                
                f.write(f"INSERT INTO Transaccion (id_transaccion, datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario) VALUES ({next_sim_trans_id}, '{random.choice(clientes_bm)}', 'compra', {ubicacion}, '{fecha_sql.strftime('%Y-%m-%d %H:%M:%S')}', '{recinto_sql}', {espectaculo_sql}, '{random.choice(tipos_usr)}');\\n")
                next_sim_trans_id+=1
                operaciones_realizadas_count += 1
                pbar_ops.update(1)

            # RESERVAS
            for _ in range(num_reservas):
                if not localidades_por_evento or operaciones_realizadas_count >= max_total_operaciones: break
                evento_key = random.choice(list(localidades_por_evento.keys()))
                if not localidades_por_evento[evento_key]: 
                    del localidades_por_evento[evento_key]
                    continue
                ubicacion, tipos_usr = localidades_por_evento[evento_key].pop(0)
                if not localidades_por_evento[evento_key]: del localidades_por_evento[evento_key]
                fecha_sql, recinto_sql, espectaculo_sql = evento_key
                cliente_reserva = random.choice(clientes_bm)

                f.write(f"INSERT INTO Transaccion (id_transaccion, datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario) VALUES ({next_sim_trans_id}, '{cliente_reserva}', 'reserva', {ubicacion}, '{fecha_sql.strftime('%Y-%m-%d %H:%M:%S')}', '{recinto_sql}', {espectaculo_sql}, '{random.choice(tipos_usr)}');\\n")
                reservas_hechas_para_anular.append({'id': next_sim_trans_id, 'cliente': cliente_reserva})
                next_sim_trans_id+=1
                operaciones_realizadas_count += 1
                pbar_ops.update(1)

            # ANULACIONES
            for _ in range(num_anulaciones):
                if not reservas_hechas_para_anular or operaciones_realizadas_count >= max_total_operaciones: break
                res_anular = random.choice(reservas_hechas_para_anular)
                reservas_hechas_para_anular.remove(res_anular)
                f.write(f"CALL cancelar_reserva({res_anular['id']}, '{res_anular['cliente']}');\\n")
                operaciones_realizadas_count += 1
                pbar_ops.update(1)
            
            pbar_ops.close()
            
            consultas_ejemplo_sql = [
                "SELECT COUNT(*) FROM Evento WHERE estado = 'Abierto';",
                "SELECT e.espectaculo_id, COUNT(t.id_transaccion) FROM Evento e JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id WHERE t.estado = 'compra' GROUP BY e.espectaculo_id ORDER BY RAND() LIMIT 1;",
                "SELECT * FROM Vista_Top10_espectaculos LIMIT 1;",
                "SELECT r.id_nombre, COUNT(l.ubicacion) FROM Recinto r JOIN Localidad l ON r.id_nombre = l.recinto_id GROUP BY r.id_nombre ORDER BY RAND() LIMIT 1;"
            ]
            f.write(f"\n-- Consultas ({num_consultas})\\n")
            for _ in tqdm(range(num_consultas), desc="Generando consultas SQL"):
                f.write(f"{random.choice(consultas_ejemplo_sql)}\\n")
            
            f.write("\nCOMMIT;\n")
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

def mostrar_menu():
    """Muestra el menú principal"""
    console = Console()
    
    while True:
        console.clear()
        rprint(Panel.fit(
            "[bold yellow]Menú de Pruebas de Estrés de Base de Datos[/bold yellow]\n\n"
            "1. Reiniciar Base de Datos\n"
            "2. Poblar Base de Datos\n"
            "3. Ver Detalles de Evento\n"
            "4. Simular Clientes y Eventos (Continuo)\n"
            "5. Generar Benchmark SQL\n"
            "6. Batería de Pruebas\n"
            "7. Salir",
            title="[bold blue]Opciones Disponibles[/bold blue]",
            border_style="blue"
        ))
        
        opcion = Prompt.ask("\nSeleccione una opción", choices=["1", "2", "3", "4", "5", "6", "7"])
        
        if opcion == "1":
            reset_database()
        elif opcion == "2":
            poblar_base_datos()
        elif opcion == "3":
            ver_evento()
        elif opcion == "4":
            simular()
        elif opcion == "5":
            generar_benchmark_sql()
        elif opcion == "6":
            console.print("[bold yellow]Batería de pruebas - En desarrollo[/bold yellow]")
        elif opcion == "7":
            console.print("[bold green]¡Hasta luego![/bold green]")
            break
        else: # Should not happen with Prompt.ask choices
            continue

        # Only ask to continue if not exiting and not after simulation (which handles its own continuation/exit)
        if opcion != "7" and opcion != "4": 
             Prompt.ask("\nPresione Enter para continuar...")
        elif opcion == "4": # After simulation, just loop back to menu
            pass

if __name__ == "__main__":
    mostrar_menu()
