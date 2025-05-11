from .base import console, DB_CONFIG
import mysql.connector
from datetime import datetime
from rich.table import Table
from rich.prompt import Prompt

def ver_evento():
    """Muestra los detalles de un evento específico"""
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
                e.estado,
                GROUP_CONCAT(DISTINCT etu.tipo_usuario) as tipos_usuario_permitidos
            FROM Evento e
            LEFT JOIN Espectaculo esp ON e.espectaculo_id = esp.id_espectaculo
            LEFT JOIN Recinto r ON e.recinto_id = r.id_nombre
            LEFT JOIN Localidad l ON e.fecha = l.fecha 
                AND e.recinto_id = l.recinto_id 
                AND e.espectaculo_id = l.espectaculo_id
            LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion 
                AND l.fecha = t.fecha 
                AND l.recinto_id = t.recinto_id 
                AND l.espectaculo_id = t.espectaculo_id
            LEFT JOIN Espectaculo_TipoUsuario etu ON e.espectaculo_id = etu.espectaculo_id
            GROUP BY e.fecha, e.recinto_id, e.espectaculo_id, esp.nombre, r.id_nombre, e.cancelaciones, e.estado
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
        table.add_column("Estado", style="blue")
        table.add_column("Total Localidades", style="cyan")
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
                evento['estado'],
                str(evento['total_localidades']),
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