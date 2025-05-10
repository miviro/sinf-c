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
            cursor.execute("INSERT INTO Espectaculo (id_espectaculo, nombre, tipo) VALUES (%s, %s, %s)", esp)
        
        # Poblar Tipos de Usuarios
        console.print("\n[bold blue]Poblando Tipos de Usuarios...")
        tipos_usuarios = ['Jubilado', 'Adulto', 'Infantil', 'Parado', 'Bebe']
        for tipo in tqdm(tipos_usuarios, desc="Insertando Tipos de Usuarios"):
            cursor.execute("INSERT INTO TiposDeUsuarios (tipo_usuario) VALUES (%s)", (tipo,))
        
        # Poblar Espectaculo_TipoUsuario
        console.print("\n[bold blue]Poblando Relaciones Espectáculo-TipoUsuario...")
        for esp_id in tqdm(range(1, 6), desc="Creando Relaciones"):
            for tipo in tipos_usuarios:
                cursor.execute("INSERT INTO Espectaculo_TipoUsuario (espectaculo_id, tipo_usuario) VALUES (%s, %s)",
                             (esp_id, tipo))
        
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
            cursor.execute("INSERT INTO Recinto (id_nombre, aforo_max) VALUES (%s, %s)", rec)
        
        # Poblar Eventos
        console.print("\n[bold blue]Poblando Eventos...")
        fechas = ['2024-06-01', '2024-06-15', '2024-07-01', '2024-07-15', '2024-08-01']
        for fecha in tqdm(fechas, desc="Creando Eventos"):
            for rec_id, _ in recintos:
                for esp_id in range(1, 6):
                    cursor.execute("""
                        INSERT INTO Evento (fecha, recinto_id, espectaculo_id, estado, fecha_fin, cancelaciones)
                        VALUES (%s, %s, %s, 'Abierto', %s, 0)
                    """, (fecha, rec_id, esp_id, fecha))
        
        # Poblar Localidades y Costes
        console.print("\n[bold blue]Poblando Localidades y Costes...")
        for fecha in tqdm(fechas, desc="Procesando Fechas"):
            for rec_id, aforo in recintos:
                for esp_id in range(1, 6):
                    # Primero, generar los 4 tipos de precios para cada tipo de usuario en este evento
                    precios_por_tipo = {}
                    for tipo in tipos_usuarios:
                        # Usar una semilla basada en el evento y tipo de usuario para generar precios consistentes
                        random.seed(f"{fecha}{rec_id}{esp_id}{tipo}")
                        
                        # Definir rangos de precios por tipo de usuario
                        rangos_precios = {
                            'Jubilado': (15, 45),
                            'Adulto': (30, 80),
                            'Infantil': (10, 40),
                            'Parado': (15, 45),
                            'Bebe': (5, 25)
                        }
                        
                        # Generar 4 precios únicos dentro del rango
                        precios = set()
                        while len(precios) < 4:
                            min_precio, max_precio = rangos_precios[tipo]
                            precio = random.randint(min_precio, max_precio)
                            precios.add(precio)
                        
                        # Guardar los 4 precios ordenados
                        precios_por_tipo[tipo] = sorted(list(precios))
                    
                    # Preparar datos para inserciones en lote
                    localidades_batch = []
                    costes_batch = []
                    
                    # Crear localidades y costes en lote
                    for ubicacion in range(1, min(aforo + 1, 1001)):  # Limitamos a 1000 localidades por evento
                        # Añadir localidad al lote
                        localidades_batch.append((ubicacion, fecha, rec_id, esp_id))
                        
                        # Para cada tipo de usuario, añadir coste al lote
                        for tipo in tipos_usuarios:
                            tipo_precio = random.randint(0, 3)  # Índice del tipo de precio (0-3)
                            precio = precios_por_tipo[tipo][tipo_precio]
                            costes_batch.append((ubicacion, fecha, rec_id, esp_id, tipo, precio))
                    
                    # Insertar localidades en lote
                    cursor.executemany("""
                        INSERT INTO Localidad (ubicacion, fecha, recinto_id, espectaculo_id)
                        VALUES (%s, %s, %s, %s)
                    """, localidades_batch)
                    
                    # Insertar costes en lote
                    cursor.executemany("""
                        INSERT INTO Coste (ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario, precio)
                        VALUES (%s, %s, %s, %s, %s, %s)
                    """, costes_batch)
                    
                    # Hacer commit después de cada evento para no sobrecargar la memoria
                    conn.commit()
        
        console.print("[bold green]¡Base de datos poblada con éxito!")
        
    except Exception as e:
        console.print(f"[bold red]Error al poblar la base de datos: {e}")
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

def simular_usuarios(num_usuarios, prob_compra, prob_reserva, prob_cancelacion, duracion, console):
    """Simula usuarios realizando transacciones en tiempo real"""
    global stats
    stats = {
        'transacciones_totales': 0,
        'compras': 0,
        'reservas': 0,
        'cancelaciones': 0,
        'errores': 0,
        'tiempos_respuesta': [],
        'tiempo_inicio': time.time()
    }
    
    # Cola para comunicación entre hilos
    stats_queue = queue.Queue()
    
    # Hilo para mostrar estadísticas
    def mostrar_stats():
        while True:
            try:
                # Obtener estadísticas de la cola
                nueva_stats = stats_queue.get(timeout=1)
                if nueva_stats == "STOP":
                    break
                
                # Calcular estadísticas
                tiempo_transcurrido = time.time() - stats['tiempo_inicio']
                tps = stats['transacciones_totales'] / tiempo_transcurrido if tiempo_transcurrido > 0 else 0
                tiempo_promedio = statistics.mean(stats['tiempos_respuesta']) if stats['tiempos_respuesta'] else 0
                
                # Obtener uso de CPU y memoria
                cpu_percent = psutil.cpu_percent()
                memory = psutil.Process().memory_info().rss / 1024 / 1024  # MB
                
                # Crear tabla de estadísticas
                table = Table(title="Estadísticas de Simulación")
                table.add_column("Métrica", style="cyan")
                table.add_column("Valor", style="green")
                
                table.add_row("Tiempo Transcurrido", f"{tiempo_transcurrido:.2f}s")
                table.add_row("Transacciones Totales", str(stats['transacciones_totales']))
                table.add_row("Compras", str(stats['compras']))
                table.add_row("Reservas", str(stats['reservas']))
                table.add_row("Cancelaciones", str(stats['cancelaciones']))
                table.add_row("Errores", str(stats['errores']))
                table.add_row("TPS", f"{tps:.2f}")
                table.add_row("Tiempo Respuesta Promedio", f"{tiempo_promedio:.2f}ms")
                table.add_row("Uso CPU", f"{cpu_percent}%")
                table.add_row("Uso Memoria", f"{memory:.2f}MB")
                
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
        for i in range(num_usuarios):
            datos_bancarios = f"SIM_{random.randint(1000, 9999)}"
            try:
                cursor.execute("INSERT INTO Cliente (datos_bancarios) VALUES (%s)", (datos_bancarios,))
                clientes.append(datos_bancarios)
            except Exception:
                continue  # Si el cliente ya existe, continuamos
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
        while time.time() < tiempo_fin and stats['transacciones_totales'] < num_usuarios:
            # Determinar tipo de acción
            rand = random.random()
            
            if rand < prob_compra:
                # Intentar compra
                if not localidades_disponibles:
                    continue
                    
                localidad = random.choice(localidades_disponibles)
                fecha, recinto_id, espectaculo_id, ubicacion = localidad
                datos_bancarios = random.choice(clientes)
                tipo_usuario = random.choice(['Jubilado', 'Adulto', 'Infantil', 'Parado', 'Bebe'])
                
                try:
                    inicio = time.time()
                    cursor.execute("""
                        INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES (%s, %s, %s, %s, %s, %s, %s)
                    """, (datos_bancarios, 'compra', ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario))
                    
                    conn.commit()
                    
                    tiempo_respuesta = (time.time() - inicio) * 1000
                    stats['transacciones_totales'] += 1
                    stats['compras'] += 1
                    stats['tiempos_respuesta'].append(tiempo_respuesta)
                    stats_queue.put(stats)
                    
                except Exception as e:
                    stats['errores'] += 1
                    stats_queue.put(stats)
                
            elif rand < (prob_compra + prob_reserva):
                # Intentar reserva
                if not localidades_disponibles:
                    continue
                    
                localidad = random.choice(localidades_disponibles)
                fecha, recinto_id, espectaculo_id, ubicacion = localidad
                datos_bancarios = random.choice(clientes)
                tipo_usuario = random.choice(['Jubilado', 'Adulto', 'Infantil', 'Parado', 'Bebe'])
                
                try:
                    inicio = time.time()
                    cursor.execute("""
                        INSERT INTO Transaccion 
                        (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                        VALUES (%s, %s, %s, %s, %s, %s, %s)
                    """, (datos_bancarios, 'reserva', ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario))
                    
                    conn.commit()
                    
                    tiempo_respuesta = (time.time() - inicio) * 1000
                    stats['transacciones_totales'] += 1
                    stats['reservas'] += 1
                    stats['tiempos_respuesta'].append(tiempo_respuesta)
                    stats_queue.put(stats)
                    
                except Exception as e:
                    stats['errores'] += 1
                    stats_queue.put(stats)
                
            elif rand < (prob_compra + prob_reserva + prob_cancelacion):
                # Intentar cancelación
                if not reservas_existentes:
                    continue
                    
                reserva = random.choice(reservas_existentes)
                id_transaccion, fecha, recinto_id, espectaculo_id, ubicacion = reserva
                
                try:
                    inicio = time.time()
                    cursor.execute("CALL cancelar_reserva(%s)", (id_transaccion,))
                    conn.commit()
                    
                    tiempo_respuesta = (time.time() - inicio) * 1000
                    stats['transacciones_totales'] += 1
                    stats['cancelaciones'] += 1
                    stats['tiempos_respuesta'].append(tiempo_respuesta)
                    stats_queue.put(stats)
                    
                except Exception as e:
                    stats['errores'] += 1
                    stats_queue.put(stats)
            
            # Pequeña pausa para no sobrecargar la base de datos
            time.sleep(0.01)
    
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

def simular():
    """Interfaz para configurar y ejecutar la simulación"""
    console = Console()
    
    try:
        num_usuarios = int(Prompt.ask("\nNúmero de usuarios a simular", default="1000"))
        prob_compra = float(Prompt.ask("Probabilidad de compra (0-1)", default="0.4"))
        prob_reserva = float(Prompt.ask("Probabilidad de reserva (0-1)", default="0.3"))
        prob_cancelacion = float(Prompt.ask("Probabilidad de cancelación (0-1)", default="0.2"))
        duracion = int(Prompt.ask("Duración de la simulación en segundos", default="60"))
        
        if prob_compra + prob_reserva + prob_cancelacion > 1:
            console.print("[bold red]La suma de probabilidades no puede ser mayor que 1")
            return
        
        console.print("\n[bold yellow]Iniciando simulación...")
        simular_usuarios(num_usuarios, prob_compra, prob_reserva, prob_cancelacion, duracion, console)
        
    except ValueError as e:
        console.print(f"[bold red]Error en los parámetros: {e}")

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
            "5. Salir",
            title="[bold blue]Opciones Disponibles",
            border_style="blue"
        ))
        
        opcion = Prompt.ask("\nSeleccione una opción", choices=["1", "2", "3", "4", "5"])
        
        if opcion == "1":
            reset_database()
        elif opcion == "2":
            poblar_base_datos()
        elif opcion == "3":
            ver_evento()
        elif opcion == "4":
            simular()
        elif opcion == "5":
            console.print("[bold green]¡Hasta luego!")
            break
        
        input("\nPresione Enter para continuar...")

if __name__ == "__main__":
    mostrar_menu()
