import mysql.connector
import subprocess
from tqdm import tqdm
import time
import random
from rich.console import Console
from rich.panel import Panel
from rich.prompt import Prompt
from rich import print as rprint
from rich.table import Table
from datetime import datetime
import psutil
import threading
from tabulate import tabulate
import queue
import statistics

# Configuración de la base de datos
DB_CONFIG = {
    'host': 'localhost',
    'user': 'miviro',
    'password': '7rJYwv8fYYBwEydfHJ1C2Q==',
    'database': 'mydb'
}

# Configuración de la simulación
SIM_CONFIG = {
    'stop_on_error': False,  # Cambiar a False para continuar la simulación después de errores
    'benchmark_file': 'benchmark.sql'  # Archivo para el benchmark SQL
}

# Variables globales para estadísticas
stats = {
    'transacciones_totales': 0,
    'compras': 0,
    'reservas': 0,
    'errores': 0,
    'tiempos_respuesta': [],
    'tiempo_inicio': None
}

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
            cursor.execute("DROP DATABASE IF EXISTS mydb")
            cursor.execute("CREATE DATABASE mydb")
            cursor.close()
            conn.close()
            
            # Ejecutar el script SQL
            subprocess.run('mysql -u miviro -p7rJYwv8fYYBwEydfHJ1C2Q== mydb < taquilla.sql', shell=True)
            console.print("[bold green]¡Base de datos reiniciada con éxito!")
        except Exception as e:
            console.print(f"[bold red]Error al reiniciar la base de datos: {e}")

def poblar_base_datos():
    """Pobla la base de datos con datos de prueba"""
    console = Console()
    
    try:
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
            for tipo in tipos_usuarios:
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
        fechas = ['2024-06-01', '2024-06-15', '2024-07-01', '2024-07-15', '2024-08-01']
        for fecha in tqdm(fechas, desc="Creando Eventos"):
            for rec_id, _ in recintos:
                for esp_id in range(1, 6):
                    try:
                        cursor.execute("""
                            INSERT INTO Evento (fecha, recinto_id, espectaculo_id, estado, fecha_fin, cancelaciones)
                            VALUES (%s, %s, %s, %s, %s, %s)
                        """, (fecha, rec_id, esp_id, 'Abierto', fecha, 0))
                    except mysql.connector.Error as err:
                        if err.errno == 1062:  # Duplicate entry error
                            continue
                        raise
        
        # Poblar Localidades y Costes
        console.print("\n[bold blue]Poblando Localidades y Costes...")
        
        # Preparar todos los datos en memoria
        localidades_batch = []
        costes_batch = []
        batch_size = 1000  # Reducido para mejor manejo de errores
        
        for fecha in tqdm(fechas, desc="Procesando Fechas"):
            for rec_id, aforo in recintos:
                for esp_id in range(1, 6):
                    # Generar precios para este evento
                    precios_por_tipo = {}
                    for tipo in tipos_usuarios:
                        random.seed(f"{fecha}{rec_id}{esp_id}{tipo}")
                        rangos_precios = {
                            'Jubilado': (15, 45),
                            'Adulto': (30, 80),
                            'Infantil': (10, 40),
                            'Parado': (15, 45),
                            'Bebe': (5, 25)
                        }
                        precios = set()
                        while len(precios) < 4:
                            min_precio, max_precio = rangos_precios[tipo]
                            precio = random.randint(min_precio, max_precio)
                            precios.add(precio)
                        precios_por_tipo[tipo] = sorted(list(precios))
                    
                    # Crear localidades y costes para este evento
                    for ubicacion in range(1, min(aforo + 1, 1001)):
                        try:
                            localidades_batch.append((ubicacion, fecha, rec_id, esp_id))
                            
                            for tipo in tipos_usuarios:
                                tipo_precio = random.randint(0, 3)
                                precio = precios_por_tipo[tipo][tipo_precio]
                                costes_batch.append((ubicacion, fecha, rec_id, esp_id, tipo, precio))
                            
                            # Hacer commit cada batch_size registros
                            if len(localidades_batch) >= batch_size:
                                try:
                                    cursor.executemany("""
                                        INSERT INTO Localidad (ubicacion, fecha, recinto_id, espectaculo_id)
                                        VALUES (%s, %s, %s, %s)
                                    """, localidades_batch)
                                    
                                    cursor.executemany("""
                                        INSERT INTO Coste (ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario, precio)
                                        VALUES (%s, %s, %s, %s, %s, %s)
                                    """, costes_batch)
                                    
                                    conn.commit()
                                    localidades_batch = []
                                    costes_batch = []
                                except mysql.connector.Error as err:
                                    if err.errno == 1062:  # Duplicate entry error
                                        localidades_batch = []
                                        costes_batch = []
                                        continue
                                    raise
                        except Exception as e:
                            console.print(f"[bold red]Error al procesar ubicación {ubicacion}: {e}")
                            continue
        
        # Insertar registros restantes
        if localidades_batch:
            try:
                cursor.executemany("""
                    INSERT INTO Localidad (ubicacion, fecha, recinto_id, espectaculo_id)
                    VALUES (%s, %s, %s, %s)
                """, localidades_batch)
                
                cursor.executemany("""
                    INSERT INTO Coste (ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario, precio)
                    VALUES (%s, %s, %s, %s, %s, %s)
                """, costes_batch)
                
                conn.commit()
            except mysql.connector.Error as err:
                if err.errno == 1062:  # Duplicate entry error
                    pass
                else:
                    raise
        
        console.print("[bold green]¡Base de datos poblada con éxito!")
        
    except Exception as e:
        console.print(f"[bold red]Error al poblar la base de datos: {e}")
        if 'conn' in locals():
            conn.rollback()
    finally:
        if 'cursor' in locals():
            cursor.close()
        if 'conn' in locals():
            conn.close()

def ver_evento():
    """Muestra los detalles de un evento específico"""
    console = Console()
    
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor(dictionary=True)
        
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
                SUM(CASE WHEN t.estado = 'reserva' THEN 1 ELSE 0 END) as reservadas
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
            GROUP BY e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, r.id_nombre
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
        
        for i, evento in enumerate(eventos, 1):
            total = evento['total_localidades']
            ocupacion = ((evento['compradas'] + evento['reservadas']) / total * 100) if total > 0 else 0
            reservas = (evento['reservadas'] / total * 100) if total > 0 else 0
            
            table.add_row(
                str(i),
                evento['fecha'],
                evento['nombre_espectaculo'],
                evento['nombre_recinto'],
                f"{ocupacion:.1f}%",
                f"{reservas:.1f}%"
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
        
        stats = cursor.fetchone()
        
        # Mostrar estadísticas
        console.print("\n[bold blue]Estadísticas del Evento:")
        console.print(f"Total de localidades: {stats['total_localidades']}")
        console.print(f"Localidades libres: {stats['libres']}")
        console.print(f"Localidades reservadas: {stats['reservadas']}")
        console.print(f"Localidades compradas: {stats['compradas']}")
        
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
        for precio in precios:
            if precio['tipo_usuario'] not in precios_por_tipo:
                precios_por_tipo[precio['tipo_usuario']] = []
            precios_por_tipo[precio['tipo_usuario']].append(precio['precio'])
        
        # Mostrar precios
        console.print("\n[bold blue]Precios por Tipo de Usuario:")
        for tipo, precios_list in precios_por_tipo.items():
            console.print(f"\n[bold yellow]{tipo}:")
            for i, precio in enumerate(precios_list, 1):
                console.print(f"  Precio {i}: {precio}€")
        
    except Exception as e:
        console.print(f"[bold red]Error al mostrar el evento: {e}")
    finally:
        if 'cursor' in locals():
            cursor.close()
        if 'conn' in locals():
            conn.close()

def simular():
    """Interfaz para configurar y ejecutar la simulación"""
    console = Console()
    
    try:
        num_usuarios = int(Prompt.ask("\nNúmero de clientes a crear", default="1000"))
        compras_por_segundo = float(Prompt.ask("Tasa de compras por segundo", default="20"))
        reservas_por_segundo = float(Prompt.ask("Tasa de reservas por segundo", default="15"))
        anulaciones_por_segundo = float(Prompt.ask("Tasa de anulaciones por segundo", default="5"))
        duracion = int(Prompt.ask("Duración de la simulación en segundos", default="60"))
        
        if compras_por_segundo < 0 or reservas_por_segundo < 0 or anulaciones_por_segundo < 0:
            console.print("[bold red]Las tasas no pueden ser negativas")
            return
        
        console.print("\n[bold yellow]Iniciando simulación...")
        simular_usuarios(num_usuarios, compras_por_segundo, reservas_por_segundo, anulaciones_por_segundo, duracion, console)
        
    except ValueError as e:
        console.print(f"[bold red]Error en los parámetros: {e}")

def simular_usuarios(num_usuarios, compras_por_segundo, reservas_por_segundo, anulaciones_por_segundo, duracion, console):
    """Simula usuarios realizando transacciones en tiempo real"""
    global stats
    stats = {
        'transacciones_totales': 0,
        'compras': 0,
        'reservas': 0,
        'cancelaciones': 0,
        'errores': 0,
        'tiempos_respuesta': [],
        'tiempo_inicio': time.time(),
        'errores_detalle': {},
        'ultimos_errores': []
    }
    
    # Cola para comunicación entre hilos
    stats_queue = queue.Queue()
    
    # Hilo para mostrar estadísticas
    def mostrar_stats():
        ultima_actualizacion = 0
        while True:
            try:
                # Obtener estadísticas de la cola
                nueva_stats = stats_queue.get(timeout=1)
                if nueva_stats == "STOP":
                    break
                
                # Actualizar solo cada segundo
                tiempo_actual = time.time()
                if tiempo_actual - ultima_actualizacion < 1.0:
                    continue
                
                ultima_actualizacion = tiempo_actual
                
                # Calcular estadísticas
                tiempo_transcurrido = tiempo_actual - stats['tiempo_inicio']
                tps = stats['transacciones_totales'] / tiempo_transcurrido if tiempo_transcurrido > 0 else 0
                tiempo_promedio = statistics.mean(stats['tiempos_respuesta']) if stats['tiempos_respuesta'] else 0
                
                # Calcular tasas por segundo
                compras_por_segundo_actual = stats['compras'] / tiempo_transcurrido if tiempo_transcurrido > 0 else 0
                reservas_por_segundo_actual = stats['reservas'] / tiempo_transcurrido if tiempo_transcurrido > 0 else 0
                anulaciones_por_segundo_actual = stats['cancelaciones'] / tiempo_transcurrido if tiempo_transcurrido > 0 else 0
                
                # Obtener uso de CPU y memoria
                cpu_percent = psutil.cpu_percent()
                memory = psutil.Process().memory_info().rss / 1024 / 1024  # MB
                
                # Crear tabla de estadísticas
                table = Table(title="Estadísticas de Simulación")
                table.add_column("Métrica", style="cyan")
                table.add_column("Valor", style="green")
                
                table.add_row("Tiempo Transcurrido", f"{tiempo_transcurrido:.2f}s")
                table.add_row("Transacciones Totales", str(stats['transacciones_totales']))
                table.add_row("Compras", f"{stats['compras']} ({compras_por_segundo_actual:.1f}/s)")
                table.add_row("Reservas", f"{stats['reservas']} ({reservas_por_segundo_actual:.1f}/s)")
                table.add_row("Anulaciones", f"{stats['cancelaciones']} ({anulaciones_por_segundo_actual:.1f}/s)")
                table.add_row("Errores", str(stats['errores']))
                table.add_row("TPS", f"{tps:.2f}")
                table.add_row("Tiempo Respuesta Promedio", f"{tiempo_promedio:.2f}ms")
                table.add_row("Uso CPU", f"{cpu_percent}%")
                table.add_row("Uso Memoria", f"{memory:.2f}MB")
                
                # Mostrar últimos 10 errores solo si stop_on_error es True
                if SIM_CONFIG['stop_on_error'] and stats['ultimos_errores']:
                    error_table = Table(title="Últimos 10 Errores", show_header=True, header_style="bold red")
                    error_table.add_column("Error", style="red", no_wrap=False)
                    error_table.add_column("Cantidad", style="yellow", justify="right")
                    
                    for error, count in stats['ultimos_errores']:
                        error_table.add_row(error, str(count))
                    
                    console.clear()
                    console.print(table)
                    console.print("\n")
                    console.print(error_table)
                else:
                    console.clear()
                    console.print(table)
                
            except queue.Empty:
                continue
    
    # Iniciar hilo de estadísticas
    stats_thread = threading.Thread(target=mostrar_stats)
    stats_thread.start()
    
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor()
        
        # Crear clientes para la simulación
        console.print("[bold blue]Creando clientes para la simulación...")
        clientes = []
        for i in tqdm(range(num_usuarios), desc="Creando clientes"):
            datos_bancarios = f"SIM_{random.randint(1000, 9999)}"
            try:
                cursor.execute("INSERT INTO Cliente (datos_bancarios) VALUES (%s)", (datos_bancarios,))
                clientes.append(datos_bancarios)
            except mysql.connector.Error as err:
                if err.errno == 1062:  # Duplicate entry error
                    continue
                error_msg = f"Error al crear cliente: {err}"
                stats['errores_detalle'][error_msg] = stats['errores_detalle'].get(error_msg, 0) + 1
                stats['ultimos_errores'].append((error_msg, stats['errores_detalle'][error_msg]))
                if len(stats['ultimos_errores']) > 10:
                    stats['ultimos_errores'].pop(0)
                stats['errores'] += 1
                stats_queue.put(stats)
                continue
        conn.commit()
        
        if not clientes:
            console.print("[bold red]No se pudieron crear clientes para la simulación.")
            return
        
        # Obtener eventos disponibles
        cursor.execute("""
            SELECT e.fecha, e.recinto_id, e.espectaculo_id, l.ubicacion
            FROM Evento e
            JOIN Localidad l ON e.fecha = l.fecha 
                AND e.recinto_id = l.recinto_id 
                AND e.espectaculo_id = l.espectaculo_id
            LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion 
                AND l.fecha = t.fecha 
                AND l.recinto_id = t.recinto_id 
                AND l.espectaculo_id = t.espectaculo_id
            WHERE t.id_transaccion IS NULL
            ORDER BY RAND()
        """)
        localidades_disponibles = cursor.fetchall()
        
        # Obtener reservas existentes para cancelaciones
        cursor.execute("""
            SELECT id_transaccion, fecha, recinto_id, espectaculo_id, ubicacion
            FROM Transaccion
            WHERE estado = 'reserva'
        """)
        reservas_existentes = cursor.fetchall()
        
        if not localidades_disponibles and not reservas_existentes:
            console.print("[bold red]No hay localidades disponibles ni reservas para simular.")
            return
        
        console.print("[bold green]Iniciando simulación de transacciones...")
        
        # Simular usuarios
        tiempo_fin = time.time() + duracion
        ultima_compra = time.time()
        ultima_reserva = time.time()
        ultima_anulacion = time.time()
        
        while time.time() < tiempo_fin and stats['transacciones_totales'] < num_usuarios:
            tiempo_actual = time.time()
            
            # Intentar compra si ha pasado el tiempo suficiente
            if tiempo_actual - ultima_compra >= 1.0/compras_por_segundo and localidades_disponibles:
                localidad = random.choice(localidades_disponibles)
                fecha, recinto_id, espectaculo_id, ubicacion = localidad
                datos_bancarios = random.choice(clientes)
                tipo_usuario = random.choice(['Jubilado', 'Adulto', 'Infantil', 'Parado', 'Bebe'])
                
                try:
                    inicio = time.time()
                    query = """
                        INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES (%s, %s, %s, %s, %s, %s, %s)
                    """
                    params = (datos_bancarios, 'compra', ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                    cursor.execute(query, params)
                    
                    conn.commit()
                    
                    tiempo_respuesta = (time.time() - inicio) * 1000
                    stats['transacciones_totales'] += 1
                    stats['compras'] += 1
                    stats['tiempos_respuesta'].append(tiempo_respuesta)
                    ultima_compra = tiempo_actual
                    stats_queue.put(stats)
                    
                except mysql.connector.Error as err:
                    error_msg = f"Error en compra: {err}\nQuery: {query}\nParams: {params}"
                    if SIM_CONFIG['stop_on_error']:
                        console.print(f"\n[bold red]{error_msg}")
                    stats['errores_detalle'][error_msg] = stats['errores_detalle'].get(error_msg, 0) + 1
                    stats['ultimos_errores'].append((error_msg, stats['errores_detalle'][error_msg]))
                    if len(stats['ultimos_errores']) > 10:
                        stats['ultimos_errores'].pop(0)
                    stats['errores'] += 1
                    stats_queue.put(stats)
                    if SIM_CONFIG['stop_on_error']:
                        return  # Detener la simulación si está configurado para detenerse en errores
            
            # Intentar reserva si ha pasado el tiempo suficiente
            if tiempo_actual - ultima_reserva >= 1.0/reservas_por_segundo and localidades_disponibles:
                localidad = random.choice(localidades_disponibles)
                fecha, recinto_id, espectaculo_id, ubicacion = localidad
                datos_bancarios = random.choice(clientes)
                tipo_usuario = random.choice(['Jubilado', 'Adulto', 'Infantil', 'Parado', 'Bebe'])
                
                try:
                    inicio = time.time()
                    query = """
                        INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES (%s, %s, %s, %s, %s, %s, %s)
                    """
                    params = (datos_bancarios, 'reserva', ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                    cursor.execute(query, params)
                    
                    conn.commit()
                    
                    tiempo_respuesta = (time.time() - inicio) * 1000
                    stats['transacciones_totales'] += 1
                    stats['reservas'] += 1
                    stats['tiempos_respuesta'].append(tiempo_respuesta)
                    ultima_reserva = tiempo_actual
                    stats_queue.put(stats)
                    
                except mysql.connector.Error as err:
                    error_msg = f"Error en reserva: {err}\nQuery: {query}\nParams: {params}"
                    if SIM_CONFIG['stop_on_error']:
                        console.print(f"\n[bold red]{error_msg}")
                    stats['errores_detalle'][error_msg] = stats['errores_detalle'].get(error_msg, 0) + 1
                    stats['ultimos_errores'].append((error_msg, stats['errores_detalle'][error_msg]))
                    if len(stats['ultimos_errores']) > 10:
                        stats['ultimos_errores'].pop(0)
                    stats['errores'] += 1
                    stats_queue.put(stats)
                    if SIM_CONFIG['stop_on_error']:
                        return  # Detener la simulación si está configurado para detenerse en errores
            
            # Intentar anulación si ha pasado el tiempo suficiente
            if tiempo_actual - ultima_anulacion >= 1.0/anulaciones_por_segundo and reservas_existentes:
                # Verificar que la reserva aún existe antes de intentar cancelarla
                reserva = random.choice(reservas_existentes)
                id_transaccion, fecha, recinto_id, espectaculo_id, ubicacion = reserva
                
                # Verificar que la reserva aún existe
                cursor.execute("""
                    SELECT id_transaccion 
                    FROM Transaccion 
                    WHERE id_transaccion = %s AND estado = 'reserva'
                """, (id_transaccion,))
                
                if not cursor.fetchone():
                    continue  # Saltar esta iteración si la reserva ya no existe
                
                try:
                    inicio = time.time()
                    query = "CALL cancelar_reserva(%s)"
                    params = (id_transaccion,)
                    cursor.execute(query, params)
                    conn.commit()
                    
                    tiempo_respuesta = (time.time() - inicio) * 1000
                    stats['transacciones_totales'] += 1
                    stats['cancelaciones'] += 1
                    stats['tiempos_respuesta'].append(tiempo_respuesta)
                    ultima_anulacion = tiempo_actual
                    stats_queue.put(stats)
                    
                except mysql.connector.Error as err:
                    error_msg = f"Error en anulación: {err}\nQuery: {query}\nParams: {params}"
                    if SIM_CONFIG['stop_on_error']:
                        console.print(f"\n[bold red]{error_msg}")
                    stats['errores_detalle'][error_msg] = stats['errores_detalle'].get(error_msg, 0) + 1
                    stats['ultimos_errores'].append((error_msg, stats['errores_detalle'][error_msg]))
                    if len(stats['ultimos_errores']) > 10:
                        stats['ultimos_errores'].pop(0)
                    stats['errores'] += 1
                    stats_queue.put(stats)
                    if SIM_CONFIG['stop_on_error']:
                        return  # Detener la simulación si está configurado para detenerse en errores
            
            # Pequeña pausa para no sobrecargar la base de datos
            time.sleep(0.001)
    
    except Exception as e:
        console.print(f"[bold red]Error en la simulación: {e}")
    finally:
        if 'cursor' in locals():
            cursor.close()
        if 'conn' in locals():
            conn.close()
        
        # Detener hilo de estadísticas
        stats_queue.put("STOP")
        stats_thread.join()

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
        
        # Conectar a la base de datos para obtener datos existentes
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor()
        
        # Obtener clientes existentes o crear nuevos si no hay suficientes
        cursor.execute("SELECT datos_bancarios FROM Cliente LIMIT 1000")
        clientes = [row[0] for row in cursor.fetchall()]
        
        if len(clientes) < 100:
            console.print("[bold yellow]Creando clientes para el benchmark...")
            for i in tqdm(range(1000), desc="Creando clientes"):
                datos_bancarios = f"BENCH_{random.randint(1000, 9999)}"
                try:
                    cursor.execute("INSERT INTO Cliente (datos_bancarios) VALUES (%s)", (datos_bancarios,))
                    clientes.append(datos_bancarios)
                except mysql.connector.Error as err:
                    if err.errno == 1062:  # Duplicate entry error
                        continue
            conn.commit()
            
            cursor.execute("SELECT datos_bancarios FROM Cliente LIMIT 1000")
            clientes = [row[0] for row in cursor.fetchall()]
        
        # Obtener localidades disponibles
        cursor.execute("""
            SELECT e.fecha, e.recinto_id, e.espectaculo_id, l.ubicacion
            FROM Evento e
            JOIN Localidad l ON e.fecha = l.fecha 
                AND e.recinto_id = l.recinto_id 
                AND e.espectaculo_id = l.espectaculo_id
            LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion 
                AND l.fecha = t.fecha 
                AND l.recinto_id = t.recinto_id 
                AND l.espectaculo_id = t.espectaculo_id
            WHERE t.id_transaccion IS NULL
            LIMIT 10000
        """)
        localidades_disponibles = cursor.fetchall()
        
        if not localidades_disponibles:
            console.print("[bold red]No hay localidades disponibles para el benchmark.")
            return
        
        # Obtener tipos de usuarios
        cursor.execute("SELECT tipo_usuario FROM TiposDeUsuarios")
        tipos_usuarios = [row[0] for row in cursor.fetchall()]
        
        # Generar archivo SQL
        console.print("[bold blue]Generando archivo SQL para benchmark...")
        
        with open(SIM_CONFIG['benchmark_file'], 'w') as f:
            # Iniciar transacción y deshabilitar autocommit
            f.write("SET autocommit=0;\n")
            f.write("START TRANSACTION;\n\n")
            
            # Generar declaraciones de variables para reutilización
            f.write("-- Variables para reutilización\n")
            f.write("SET @start_time = NOW();\n\n")
            
            # Generar compras
            f.write(f"-- Compras ({num_compras})\n")
            for i in tqdm(range(num_compras), desc="Generando compras"):
                if not localidades_disponibles:
                    break
                    
                localidad = random.choice(localidades_disponibles)
                fecha, recinto_id, espectaculo_id, ubicacion = localidad
                
                # Remover la localidad para evitar duplicados
                localidades_disponibles.remove(localidad)
                
                datos_bancarios = random.choice(clientes)
                tipo_usuario = random.choice(tipos_usuarios)
                
                f.write(f"""INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('{datos_bancarios}', 'compra', {ubicacion}, '{fecha}', '{recinto_id}', {espectaculo_id}, '{tipo_usuario}');\n""")
            
            # Generar reservas
            f.write(f"\n-- Reservas ({num_reservas})\n")
            reservas_ids = []  # Para recordar qué reservas se pueden anular
            
            for i in tqdm(range(num_reservas), desc="Generando reservas"):
                if not localidades_disponibles:
                    break
                    
                localidad = random.choice(localidades_disponibles)
                fecha, recinto_id, espectaculo_id, ubicacion = localidad
                
                # Remover la localidad para evitar duplicados
                localidades_disponibles.remove(localidad)
                
                datos_bancarios = random.choice(clientes)
                tipo_usuario = random.choice(tipos_usuarios)
                
                # Almacenar información de la reserva para posibles anulaciones
                reservas_ids.append(i + 1)  # ID tentativo de la reserva
                
                f.write(f"""INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES ('{datos_bancarios}', 'reserva', {ubicacion}, '{fecha}', '{recinto_id}', {espectaculo_id}, '{tipo_usuario}');\n""")
            
            # Seleccionar transacciones creadas para anulaciones
            f.write(f"\n-- Seleccionar reservas para anulaciones\n")
            f.write("SELECT @last_insert_id := LAST_INSERT_ID();\n")
            
            # Generar anulaciones 
            f.write(f"\n-- Anulaciones ({num_anulaciones})\n")
            for i in tqdm(range(min(num_anulaciones, len(reservas_ids))), desc="Generando anulaciones"):
                reservation_id = reservas_ids[i]
                f.write(f"CALL cancelar_reserva(@last_insert_id - {len(reservas_ids) - reservation_id});\n")
            
            # Generar consultas (simples y complejas)
            f.write(f"\n-- Consultas ({num_consultas})\n")
            
            # Diferentes tipos de consultas para benchmark
            consultas = [
                "SELECT COUNT(*) FROM Transaccion WHERE estado = 'compra';",
                "SELECT COUNT(*) FROM Transaccion WHERE estado = 'reserva';",
                "SELECT e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, COUNT(t.id_transaccion) FROM Evento e JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo LEFT JOIN Transaccion t ON e.fecha = t.fecha AND e.recinto_id = t.recinto_id AND e.espectaculo_id = t.espectaculo_id GROUP BY e.fecha, e.recinto_id, e.espectaculo_id;",
                "SELECT c.datos_bancarios, COUNT(*) as num_transacciones FROM Cliente c JOIN Transaccion t ON c.datos_bancarios = t.datos_bancarios GROUP BY c.datos_bancarios ORDER BY num_transacciones DESC LIMIT 10;",
                "SELECT l.fecha, l.recinto_id, l.espectaculo_id, COUNT(*) as total, SUM(CASE WHEN t.id_transaccion IS NULL THEN 1 ELSE 0 END) as disponibles FROM Localidad l LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id GROUP BY l.fecha, l.recinto_id, l.espectaculo_id;"
            ]
            
            for i in tqdm(range(num_consultas), desc="Generando consultas"):
                f.write(f"{random.choice(consultas)}\n")
            
            # Commit y calcular tiempo
            f.write("\nCOMMIT;\n")
            f.write("SELECT TIMEDIFF(NOW(), @start_time) as tiempo_ejecucion;\n")
        
        # Cerrar conexión
        cursor.close()
        conn.close()
        
        console.print(f"[bold green]¡Archivo SQL generado en {SIM_CONFIG['benchmark_file']}!")
        
        # Ejecutar benchmark
        if Prompt.ask("\n¿Desea ejecutar el benchmark ahora?", choices=["s", "n"], default="s") == "s":
            console.print("[bold blue]Ejecutando benchmark SQL...")
            
            # Leer el archivo SQL y dividirlo en consultas
            with open(SIM_CONFIG['benchmark_file'], 'r') as f:
                sql_content = f.read()
            
            # Dividir en consultas individuales
            queries = [q.strip() for q in sql_content.split(';') if q.strip()]
            
            # Conectar a la base de datos para ejecutar las consultas
            conn = mysql.connector.connect(**DB_CONFIG)
            cursor = conn.cursor()
            
            start_time = time.time()
            
            # Ejecutar las consultas con barra de progreso
            with tqdm(total=len(queries), desc="Ejecutando consultas") as pbar:
                for query in queries:
                    try:
                        cursor.execute(query)
                        pbar.update(1)
                    except mysql.connector.Error as err:
                        console.print(f"[bold red]Error en consulta: {err}")
                        console.print(f"[bold red]Query: {query}")
                        break
            
            tiempo_total = time.time() - start_time
            
            # Obtener el tiempo de ejecución reportado por MySQL
            cursor.execute("SELECT TIMEDIFF(NOW(), @start_time) as tiempo_ejecucion")
            tiempo_sql = cursor.fetchone()[0]
            
            # Cerrar conexión
            cursor.close()
            conn.close()
            
            console.print(f"[bold green]¡Benchmark completado en {tiempo_total:.2f} segundos!")
            console.print(f"[bold green]Tiempo reportado por MySQL: {tiempo_sql}")
            
            # Mostrar estadísticas de rendimiento
            tps = (num_compras + num_reservas + num_anulaciones) / tiempo_total
            
            table = Table(title="Resultados del Benchmark")
            table.add_column("Métrica", style="cyan")
            table.add_column("Valor", style="green")
            
            table.add_row("Tiempo total", f"{tiempo_total:.2f}s")
            table.add_row("Transacciones totales", str(num_compras + num_reservas + num_anulaciones))
            table.add_row("Compras", str(num_compras))
            table.add_row("Reservas", str(num_reservas))
            table.add_row("Anulaciones", str(num_anulaciones))
            table.add_row("Consultas", str(num_consultas))
            table.add_row("TPS", f"{tps:.2f}")
            
            console.print(table)
        
    except Exception as e:
        console.print(f"[bold red]Error en el benchmark: {e}")

def mostrar_menu():
    """Muestra el menú principal"""
    console = Console()
    
    while True:
        console.clear()
        console.print(Panel.fit(
            "[bold yellow]Menú de Pruebas de Estrés de Base de Datos[/bold yellow]\n\n"
            "1. Reiniciar Base de Datos\n"
            "2. Poblar Base de Datos\n"
            "3. Ver Detalles de Evento\n"
            "4. Simular Usuarios\n"
            "5. Generar Benchmark SQL\n"
            "6. Salir",
            title="[bold blue]Opciones Disponibles",
            border_style="blue"
        ))
        
        opcion = Prompt.ask("\nSeleccione una opción", choices=["1", "2", "3", "4", "5", "6"])
        
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
            console.print("[bold green]¡Hasta luego!")
            break
        
        input("\nPresione Enter para continuar...")

if __name__ == "__main__":
    mostrar_menu()
