from .base import console, DB_CONFIG
import mysql.connector
from tqdm import tqdm
import random
from datetime import datetime, timedelta
from rich.prompt import Prompt

def poblar_base_datos():
    """Pobla la base de datos con datos de prueba"""
    try:
        # Preguntar número total de localidades
        total_localidades = int(Prompt.ask("\nNúmero total de localidades a generar", default="10000"))
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
        
        recintos_insertados = []
        for rec in tqdm(recintos, desc="Insertando Recintos"):
            try:
                # Primero verificar si el recinto ya existe
                cursor.execute("SELECT aforo_max FROM Recinto WHERE id_nombre = %s", (rec[0],))
                recinto_existente = cursor.fetchone()
                
                if recinto_existente:
                    console.print(f"[yellow]Recinto {rec[0]} ya existe con aforo {recinto_existente[0]}")
                    if recinto_existente[0] > 0:
                        recintos_insertados.append(rec)
                        continue
                    else:
                        # Si existe pero tiene aforo inválido, actualizarlo
                        console.print(f"[yellow]Actualizando aforo de {rec[0]} a {rec[1]}")
                        cursor.execute("""
                            UPDATE Recinto 
                            SET aforo_max = %s 
                            WHERE id_nombre = %s
                        """, (rec[1], rec[0]))
                        recintos_insertados.append(rec)
                else:
                    # Si no existe, insertarlo
                    console.print(f"[green]Insertando nuevo recinto {rec[0]} con aforo {rec[1]}")
                    cursor.execute("""
                        INSERT INTO Recinto (id_nombre, aforo_max) 
                        VALUES (%s, %s)
                    """, rec)
                    recintos_insertados.append(rec)
                
            except mysql.connector.Error as err:
                console.print(f"[bold red]Error al insertar recinto {rec[0]}: {err}")
                raise
        
        if not recintos_insertados:
            console.print("[bold red]No se pudieron insertar recintos. Verificar la base de datos.")
            return
            
        # Asegurarnos de que los cambios se guarden antes de continuar
        conn.commit()
        
        # Verificar que los recintos se insertaron correctamente
        console.print("\n[bold blue]Verificando recintos en la base de datos...")
        for rec_id, aforo in recintos_insertados:
            cursor.execute("SELECT aforo_max FROM Recinto WHERE id_nombre = %s", (rec_id,))
            aforo_db = cursor.fetchone()
            if not aforo_db or aforo_db[0] <= 0:
                console.print(f"[bold red]Error: El recinto {rec_id} no tiene un aforo válido en la base de datos")
                return
            console.print(f"[green]Recinto {rec_id} verificado con aforo {aforo_db[0]}")
        
        # Verificar todos los recintos en la base de datos
        console.print("\n[bold blue]Listando todos los recintos en la base de datos...")
        cursor.execute("SELECT id_nombre, aforo_max FROM Recinto")
        todos_recintos = cursor.fetchall()
        for rec_id, aforo in todos_recintos:
            console.print(f"[blue]Recinto en DB: {rec_id} con aforo {aforo}")
        
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
            
            for i, (rec_id, _) in enumerate(recintos_insertados):
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
                        raise
        
        conn.commit()
        
        if not eventos_creados:
            console.print("[bold red]No se pudieron crear eventos. Verificar la base de datos.")
            return
            
        console.print(f"[bold green]Se crearon {len(eventos_creados)} eventos exitosamente")
        
        console.print("\n[bold blue]Poblando Localidades y Costes...")
        
        eventos_data_for_localidades = []
        total_aforo_disponible = 0
        for fecha, rec_id, esp_id in eventos_creados:
            aforo = next(afr for r_id, afr in recintos_insertados if r_id == rec_id)
            eventos_data_for_localidades.append((fecha, rec_id, esp_id, aforo))
            total_aforo_disponible += aforo
        
        console.print(f"[bold blue]Aforo total disponible: {total_aforo_disponible}, necesario: {total_localidades}")
        
        if total_aforo_disponible < total_localidades:
            console.print(f"[bold yellow]Generando eventos adicionales para alcanzar {total_localidades} localidades...[/bold yellow]")
            eventos_adicionales_necesarios = []
            while total_aforo_disponible < total_localidades:
                # Seleccionar un recinto aleatorio
                rec_id, aforo = random.choice(recintos_insertados)
                # Seleccionar un espectáculo aleatorio
                esp_id = random.randint(1, 5)
                
                # Generar una fecha futura aleatoria
                fecha_base = datetime.now() + timedelta(days=random.randint(1, 30))
                fecha_evento = datetime(fecha_base.year, fecha_base.month, fecha_base.day, 
                                      random.randint(9, 20), random.choice([0, 30]), 0)
                
                # Verificar si ya existe un evento con estos parámetros
                cursor.execute("""
                    SELECT COUNT(*) FROM Evento 
                    WHERE fecha = %s AND recinto_id = %s AND espectaculo_id = %s
                """, (fecha_evento, rec_id, esp_id))
                if cursor.fetchone()[0] > 0:
                    continue
                
                # Crear el evento
                fecha_fin = fecha_evento + timedelta(hours=random.randint(2, 3))
                try:
                    cursor.execute("""
                        INSERT INTO Evento (fecha, recinto_id, espectaculo_id, estado, fecha_fin, cancelaciones)
                        VALUES (%s, %s, %s, %s, %s, %s)
                    """, (fecha_evento, rec_id, esp_id, 'Abierto', fecha_fin, 0))
                    eventos_adicionales_necesarios.append((fecha_evento, rec_id, esp_id, aforo))
                    total_aforo_disponible += aforo
                    console.print(f"[green]Evento adicional creado: {fecha_evento.strftime('%Y-%m-%d %H:%M')} - Recinto: {rec_id}, Espectáculo: {esp_id}[/green]")
                except mysql.connector.Error as err:
                    if err.errno == 1062:  # Duplicate entry
                        continue
                    raise
            
            eventos_data_for_localidades.extend(eventos_adicionales_necesarios)
            eventos_count = len(eventos_data_for_localidades)
            console.print(f"[bold green]Se crearon {len(eventos_adicionales_necesarios)} eventos adicionales[/bold green]")
            console.print(f"[bold blue]Nuevo aforo total disponible: {total_aforo_disponible}[/bold blue]")
        
        eventos_count = len(eventos_data_for_localidades)
        
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
                
                # Calculate base number of localidades for this event
                localidades_a_generar_para_este_evento = min(
                    aforo_ev,  # Can't exceed venue capacity
                    max(1, localidades_restantes_total // num_eventos_restantes)  # At least 1 if we have remaining localidades
                )
                
                # If we're close to the end and still have localidades to generate, use remaining capacity
                if localidades_restantes_total > 0 and localidades_a_generar_para_este_evento < aforo_ev:
                    localidades_a_generar_para_este_evento = min(aforo_ev, localidades_restantes_total)
                
                if localidades_a_generar_para_este_evento <= 0:
                    continue
                
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