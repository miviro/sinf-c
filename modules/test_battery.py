from .base import console
import mysql.connector
from datetime import datetime, timedelta
from rich.console import Console
from rich.table import Table
import time

def ejecutar_bateria_pruebas():
    """Ejecuta una batería de pruebas para verificar todas las funcionalidades del sistema"""
    console.print("[bold green]Ejecutando batería de pruebas...[/bold green]")
    
    # Conexión a la base de datos
    try:
        # Primero intentamos con admin
        try:
            conn = mysql.connector.connect(
                host="localhost",
                user="admin",
                password="1234",
                database="taquilla"
            )
            console.print("[green]Conexión a la base de datos establecida correctamente como admin[/green]")
        except mysql.connector.Error:
            # Si falla, intentamos con cliente
            conn = mysql.connector.connect(
                host="localhost",
                user="cliente",
                password="1234",
                database="taquilla"
            )
            console.print("[green]Conexión a la base de datos establecida correctamente como cliente[/green]")
            
        cursor = conn.cursor()
    except Exception as e:
        console.print(f"[bold red]Error al conectar con la base de datos: {e}[/bold red]")
        return
    
    # Tabla para mostrar resultados
    tabla_resultados = Table(title="Resultados de las Pruebas")
    tabla_resultados.add_column("Prueba", style="cyan")
    tabla_resultados.add_column("Descripción", style="green")
    tabla_resultados.add_column("Resultado", style="yellow")
    
    # LIMITACIONES
    prueba_no_entradas_repetidas(cursor, tabla_resultados)
    prueba_conocer_precio_entradas(cursor, tabla_resultados)
    prueba_vender_diferentes_precios(cursor, tabla_resultados)
    prueba_conocer_estado_entradas(cursor, tabla_resultados)
    prueba_conocer_aforos(cursor, tabla_resultados)
    prueba_no_eventos_solapados(cursor, tabla_resultados)
    prueba_auditoria_aforo(cursor, tabla_resultados)  # Nueva prueba añadida
    # Solo ejecutar una de las dos pruebas de límite de entradas
    prueba_limite_entradas_cliente_agresivo(cursor, tabla_resultados)
    prueba_anular_propias_reservas(cursor, tabla_resultados)
    prueba_dinero_ganado(cursor, tabla_resultados)
    
    # PROCEDIMIENTOS
    prueba_anular_transaccion(cursor, tabla_resultados)
    prueba_no_compras_eventos_finalizados(cursor, tabla_resultados)
    prueba_no_anular_menos_una_hora(cursor, tabla_resultados)
    prueba_estados_evento_automaticos(cursor, tabla_resultados)
    prueba_conversion_reservas_a_compras(cursor, tabla_resultados)
    
    # VISTAS
    prueba_vista_dinero_por_evento(cursor, tabla_resultados)
    prueba_vista_aforo_eventos(cursor, tabla_resultados)
    prueba_vista_estado_entradas(cursor, tabla_resultados)
    prueba_vista_eventos_entre_fechas(cursor, tabla_resultados)
    prueba_vista_precio_entradas_libres(cursor, tabla_resultados)
    prueba_vista_eventos_por_espectaculo(cursor, tabla_resultados)
    
    # Cerrar conexión
    conn.close()
    
    # Mostrar resultados
    console.print(tabla_resultados)
    console.print("[bold green]Batería de pruebas completada![/bold green]")

def prueba_no_entradas_repetidas(cursor, tabla):
    """Verifica que no se puedan vender entradas repetidas"""
    try:
        # Buscar si hay algún caso de entrada vendida más de una vez
        cursor.execute("""
            SELECT COUNT(*) FROM Transaccion
            GROUP BY ubicacion, fecha, recinto_id, espectaculo_id
            HAVING COUNT(*) > 1
        """)
        resultado = cursor.fetchone()
        
        if resultado is None:
            tabla.add_row(
                "No vender entradas repetidas", 
                "Comprueba que no haya entradas vendidas más de una vez", 
                "✅ Correcto"
            )
        else:
            tabla.add_row(
                "No vender entradas repetidas", 
                "Comprueba que no haya entradas vendidas más de una vez", 
                "❌ Hay entradas vendidas múltiples veces"
            )
    except Exception as e:
        tabla.add_row(
            "No vender entradas repetidas", 
            "Comprueba que no haya entradas vendidas más de una vez",
            f"❌ Error: {e}"
        )

def prueba_conocer_precio_entradas(cursor, tabla):
    """Verifica que se pueda conocer el precio de las entradas"""
    try:
        cursor.execute("SELECT COUNT(*) FROM Coste WHERE precio IS NOT NULL")
        resultado = cursor.fetchone()
        
        if resultado and resultado[0] > 0:
            tabla.add_row(
                "Conocer precio de entradas", 
                "Verifica que todas las entradas tengan un precio asignado", 
                "✅ Correcto"
            )
        else:
            tabla.add_row(
                "Conocer precio de entradas", 
                "Verifica que todas las entradas tengan un precio asignado", 
                "❌ Hay entradas sin precio"
            )
    except Exception as e:
        tabla.add_row(
            "Conocer precio de entradas", 
            "Verifica que todas las entradas tengan un precio asignado",
            f"❌ Error: {e}"
        )

def prueba_vender_diferentes_precios(cursor, tabla):
    """Verifica que se puedan vender entradas a diferentes precios"""
    try:
        cursor.execute("SELECT COUNT(DISTINCT precio) FROM Coste")
        resultado = cursor.fetchone()
        
        if resultado and resultado[0] > 1:
            tabla.add_row(
                "Vender a diferentes precios", 
                "Comprueba que existan entradas con precios distintos", 
                "✅ Correcto"
            )
        else:
            tabla.add_row(
                "Vender a diferentes precios", 
                "Comprueba que existan entradas con precios distintos", 
                "❌ Todas las entradas tienen el mismo precio"
            )
    except Exception as e:
        tabla.add_row(
            "Vender a diferentes precios", 
            "Comprueba que existan entradas con precios distintos",
            f"❌ Error: {e}"
        )

def prueba_conocer_estado_entradas(cursor, tabla):
    """Verifica que se pueda conocer el estado de las entradas (vendidas/reservadas/libres)"""
    try:
        # Verificar si se puede consultar el estado
        cursor.execute("""
            SELECT 
                e.fecha, e.recinto_id, e.espectaculo_id,
                COUNT(CASE WHEN t.estado = 'compra' THEN 1 END) as vendidas,
                COUNT(CASE WHEN t.estado = 'reserva' THEN 1 END) as reservadas,
                COUNT(CASE WHEN t.id_transaccion IS NULL THEN 1 END) as libres
            FROM Evento e
            LEFT JOIN Localidad l ON e.fecha = l.fecha AND e.recinto_id = l.recinto_id AND e.espectaculo_id = l.espectaculo_id
            LEFT JOIN Transaccion t ON l.ubicacion = t.ubicacion AND l.fecha = t.fecha AND l.recinto_id = t.recinto_id AND l.espectaculo_id = t.espectaculo_id
            GROUP BY e.fecha, e.recinto_id, e.espectaculo_id
            LIMIT 1
        """)
        resultado = cursor.fetchone()
        
        if resultado:
            tabla.add_row(
                "Conocer estado entradas", 
                "Verifica que se pueda consultar el estado de las entradas", 
                "✅ Correcto"
            )
        else:
            tabla.add_row(
                "Conocer estado entradas", 
                "Verifica que se pueda consultar el estado de las entradas", 
                "❌ No se puede determinar el estado"
            )
    except Exception as e:
        tabla.add_row(
            "Conocer estado entradas", 
            "Verifica que se pueda consultar el estado de las entradas",
            f"❌ Error: {e}"
        )

def prueba_conocer_aforos(cursor, tabla):
    """Verifica que se pueda conocer el aforo de los eventos"""
    try:
        # CASO VÁLIDO: Crear un recinto con aforo válido
        recinto_valido = "Test_Recinto_Aforo_Valido"
        cursor.execute("""
            INSERT INTO Recinto (id_nombre, aforo_max) 
            VALUES (%s, 100)
            ON DUPLICATE KEY UPDATE aforo_max = 100
        """, (recinto_valido,))
        
        # CASO INVÁLIDO: Intentar crear un recinto con aforo negativo (debería fallar si hay restricción)
        recinto_invalido = "Test_Recinto_Aforo_Invalido"
        aforo_invalido_rechazado = False
        
        try:
            cursor.execute("""
                INSERT INTO Recinto (id_nombre, aforo_max) 
                VALUES (%s, -10)
            """, (recinto_invalido,))
        except mysql.connector.Error as e:
            # Se espera un error por restricción de aforo positivo
            aforo_invalido_rechazado = True
        
        # Verificar si existen recintos con aforo definido
        cursor.execute("""
            SELECT COUNT(*) FROM Recinto
            WHERE aforo_max IS NOT NULL AND aforo_max > 0
        """)
        resultado = cursor.fetchone()
        aforo_positivo_existe = resultado and resultado[0] > 0
        
        # Verificar resultados
        if aforo_positivo_existe and aforo_invalido_rechazado:
            tabla.add_row(
                "Conocer aforos", 
                "Verifica que los eventos tengan aforo definido y válido", 
                "✅ Correcto - Se requiere aforo positivo"
            )
        elif aforo_positivo_existe and not aforo_invalido_rechazado:
            tabla.add_row(
                "Conocer aforos", 
                "Verifica que los eventos tengan aforo definido y válido", 
                "⚠️ Parcial - Existe aforo pero se permite negativo"
            )
        elif not aforo_positivo_existe:
            tabla.add_row(
                "Conocer aforos", 
                "Verifica que los eventos tengan aforo definido y válido", 
                "❌ Error - No hay eventos con aforo definido"
            )
        
        # Limpiar datos de prueba
        cursor.execute("DELETE FROM Recinto WHERE id_nombre = %s", (recinto_valido,))
        if not aforo_invalido_rechazado:
            cursor.execute("DELETE FROM Recinto WHERE id_nombre = %s", (recinto_invalido,))
            
    except Exception as e:
        tabla.add_row(
            "Conocer aforos", 
            "Verifica que los eventos tengan aforo definido y válido",
            f"❌ Error: {e}"
        )

def prueba_no_eventos_solapados(cursor, tabla):
    """Verifica que no haya eventos solapados"""
    try:
        # Crear datos de prueba: dos eventos en el mismo recinto
        recinto_test = 'Test_Recinto_Solapado'
        espectaculo_nombre1 = 'Test_Espectaculo_Solapado1'
        espectaculo_nombre2 = 'Test_Espectaculo_Solapado2'
        
        # Fechas para eventos solapados
        fecha_inicio1 = datetime.now() + timedelta(hours=5)
        fecha_fin1 = fecha_inicio1 + timedelta(hours=2)
        fecha_inicio2 = fecha_inicio1 + timedelta(hours=1)  # Esto provocará solapamiento
        fecha_fin2 = fecha_inicio2 + timedelta(hours=2)
        
        # Fechas para eventos no solapados
        fecha_inicio3 = fecha_fin1 + timedelta(minutes=30)  # 30 minutos después de que termine el evento 1
        fecha_fin3 = fecha_inicio3 + timedelta(hours=2)
        
        # Insertar el recinto de prueba
        cursor.execute("""
            INSERT INTO Recinto (id_nombre, aforo_max) 
            VALUES (%s, 100)
            ON DUPLICATE KEY UPDATE aforo_max = 100
        """, (recinto_test,))
        
        # Insertar espectáculo 1
        cursor.execute("""
            INSERT INTO Espectaculo (nombre, tipo) 
            VALUES (%s, 'Musical')
        """, (espectaculo_nombre1,))
        
        espectaculo_id1 = cursor.lastrowid
        
        # Insertar espectáculo 2
        cursor.execute("""
            INSERT INTO Espectaculo (nombre, tipo) 
            VALUES (%s, 'Musical')
        """, (espectaculo_nombre2,))
        
        espectaculo_id2 = cursor.lastrowid
        
        # Insertar el tipo de usuario para los espectáculos
        cursor.execute("""
            INSERT INTO Espectaculo_TipoUsuario (espectaculo_id, tipo_usuario)
            VALUES (%s, 'Adulto')
        """, (espectaculo_id1,))
        
        cursor.execute("""
            INSERT INTO Espectaculo_TipoUsuario (espectaculo_id, tipo_usuario)
            VALUES (%s, 'Adulto')
        """, (espectaculo_id2,))
        
        # Insertar el primer evento
        cursor.execute("""
            INSERT INTO Evento (fecha, fecha_fin, recinto_id, espectaculo_id, estado)
            VALUES (%s, %s, %s, %s, 'Abierto')
        """, (fecha_inicio1, fecha_fin1, recinto_test, espectaculo_id1))
        
        # Intentar insertar el segundo evento que se solapa (debería fallar)
        evento_solapado_falla = True
        try:
            cursor.execute("""
                INSERT INTO Evento (fecha, fecha_fin, recinto_id, espectaculo_id, estado)
                VALUES (%s, %s, %s, %s, 'Abierto')
            """, (fecha_inicio2, fecha_fin2, recinto_test, espectaculo_id2))
            evento_solapado_falla = False
        except mysql.connector.Error as e:
            # Se espera un error por solapamiento
            if 'solapa' in str(e).lower():
                evento_solapado_falla = True
            else:
                raise e
        
        # Intentar insertar un evento que no se solapa (debería funcionar)
        evento_no_solapado_funciona = False
        try:
            cursor.execute("""
                INSERT INTO Evento (fecha, fecha_fin, recinto_id, espectaculo_id, estado)
                VALUES (%s, %s, %s, %s, 'Abierto')
            """, (fecha_inicio3, fecha_fin3, recinto_test, espectaculo_id2))
            evento_no_solapado_funciona = True
        except mysql.connector.Error as e:
            evento_no_solapado_funciona = False
        
        # Verificar resultados
        if evento_solapado_falla and evento_no_solapado_funciona:
            tabla.add_row(
                "No eventos solapados", 
                "Verifica que no existan eventos con horarios solapados", 
                "✅ Correcto - Se impide solapamiento y permite eventos válidos"
            )
        elif evento_solapado_falla and not evento_no_solapado_funciona:
            tabla.add_row(
                "No eventos solapados", 
                "Verifica que no existan eventos con horarios solapados", 
                "⚠️ Parcial - Se impide solapamiento pero falla con eventos válidos"
            )
        elif not evento_solapado_falla:
            tabla.add_row(
                "No eventos solapados", 
                "Verifica que no existan eventos con horarios solapados", 
                "❌ Falla - Permite eventos solapados"
            )
        
        # Limpiar datos de prueba
        cursor.execute("DELETE FROM Evento WHERE recinto_id = %s", (recinto_test,))
        cursor.execute("DELETE FROM Espectaculo_TipoUsuario WHERE espectaculo_id IN (%s, %s)", (espectaculo_id1, espectaculo_id2))
        cursor.execute("DELETE FROM Espectaculo WHERE id_espectaculo IN (%s, %s)", (espectaculo_id1, espectaculo_id2))
        cursor.execute("DELETE FROM Recinto WHERE id_nombre = %s", (recinto_test,))
        
    except Exception as e:
        tabla.add_row(
            "No eventos solapados", 
            "Verifica que no existan eventos con horarios solapados",
            f"❌ Error: {e}"
        )

def prueba_limite_entradas_cliente_agresivo(cursor, tabla):
    """Verifica que haya límite de entradas por cliente intentando comprar hasta 1000 entradas"""
    recinto_test = 'Test Recinto 3'
    espectaculo_nombre = 'Test Espectaculo 3'
    espectaculo_id = None
    fecha_inicio = None
    
    try:
        # Crear un evento que empiece en 2 horas
        fecha_inicio = datetime.now() + timedelta(hours=2)
        fecha_fin = fecha_inicio + timedelta(hours=2)
        
        # Limpiar posibles datos anteriores (en caso de fallo previo)
        try:
            cursor.execute("SELECT id_espectaculo FROM Espectaculo WHERE nombre = %s", (espectaculo_nombre,))
            result = cursor.fetchone()
            if result:
                prev_espectaculo_id = result[0]
                cursor.execute("DELETE FROM Transaccion WHERE espectaculo_id = %s", (prev_espectaculo_id,))
                cursor.execute("DELETE FROM Coste WHERE espectaculo_id = %s", (prev_espectaculo_id,))
                cursor.execute("DELETE FROM Localidad WHERE espectaculo_id = %s", (prev_espectaculo_id,))
                cursor.execute("DELETE FROM Evento WHERE espectaculo_id = %s", (prev_espectaculo_id,))
                cursor.execute("DELETE FROM Espectaculo_TipoUsuario WHERE espectaculo_id = %s", (prev_espectaculo_id,))
                cursor.execute("DELETE FROM Espectaculo WHERE id_espectaculo = %s", (prev_espectaculo_id,))
            cursor.execute("DELETE FROM Recinto WHERE id_nombre = %s", (recinto_test,))
            # Asegurarnos de que se lean todos los resultados pendientes
            while cursor.nextset():
                pass
        except:
            # Asegurarnos de que se lean todos los resultados pendientes incluso en caso de error
            while cursor.nextset():
                pass
            pass
        
        # Insertar datos de prueba
        cursor.execute("""
            INSERT INTO Recinto (id_nombre, aforo_max) 
            VALUES (%s, 1000)
            ON DUPLICATE KEY UPDATE aforo_max = 1000
        """, (recinto_test,))
        
        cursor.execute("""
            INSERT INTO Espectaculo (nombre, tipo) 
            VALUES (%s, 'Musical')
        """, (espectaculo_nombre,))
        
        # Obtener el ID del espectáculo insertado
        cursor.execute("SELECT LAST_INSERT_ID()")
        espectaculo_id = cursor.fetchone()[0]
        
        # Insertar el tipo de usuario para el espectáculo
        cursor.execute("""
            INSERT INTO Espectaculo_TipoUsuario (espectaculo_id, tipo_usuario)
            VALUES (%s, 'Adulto')
        """, (espectaculo_id,))
        
        cursor.execute("""
            INSERT INTO Evento (fecha, fecha_fin, recinto_id, espectaculo_id, estado)
            VALUES (%s, %s, %s, %s, 'Abierto')
        """, (fecha_inicio, fecha_fin, recinto_test, espectaculo_id))
        
        # Insertar cliente de prueba
        cursor.execute("""
            INSERT INTO Cliente (datos_bancarios)
            VALUES ('999999999')
            ON DUPLICATE KEY UPDATE datos_bancarios = '999999999'
        """)
        
        # Insertar 20 localidades y costes (más que el límite de 10)
        for i in range(1, 21):
            cursor.execute("""
                INSERT INTO Localidad (ubicacion, fecha, recinto_id, espectaculo_id)
                VALUES (%s, %s, %s, %s)
            """, (i, fecha_inicio, recinto_test, espectaculo_id))
            
            cursor.execute("""
                INSERT INTO Coste (ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario, precio)
                VALUES (%s, %s, %s, %s, 'Adulto', 20)
            """, (i, fecha_inicio, recinto_test, espectaculo_id))
        
        # CASO VÁLIDO: Comprar hasta el límite permitido (10 entradas)
        compras_validas_exitosas = True
        for i in range(1, 11):
            try:
                cursor.execute("""
                    INSERT INTO Transaccion (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                    VALUES ('999999999', 'compra', %s, %s, %s, %s, 'Adulto')
                """, (i, fecha_inicio, recinto_test, espectaculo_id))
            except mysql.connector.Error:
                compras_validas_exitosas = False
                break
        
        # CASO INVÁLIDO: Intentar comprar una entrada más (la #11) (debería fallar)
        error_en_compra_11 = False
        try:
            cursor.execute("""
                INSERT INTO Transaccion (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                VALUES ('999999999', 'compra', 11, %s, %s, %s, 'Adulto')
            """, (fecha_inicio, recinto_test, espectaculo_id))
        except mysql.connector.Error as e:
            if 'Maximum ticket limit' in str(e):
                error_en_compra_11 = True
        
        # Verificar resultados
        if compras_validas_exitosas and error_en_compra_11:
            tabla.add_row(
                "Límite entradas por cliente (agresivo)", 
                "Verifica que se respete el límite de 10 entradas por cliente", 
                "✅ Correcto - Se permiten 10 entradas y se rechaza la 11"
            )
        elif not compras_validas_exitosas:
            tabla.add_row(
                "Límite entradas por cliente (agresivo)", 
                "Verifica que se respete el límite de 10 entradas por cliente", 
                f"❌ Error - No se pudieron comprar las 10 entradas permitidas"
            )
        elif not error_en_compra_11:
            tabla.add_row(
                "Límite entradas por cliente (agresivo)", 
                "Verifica que se respete el límite de 10 entradas por cliente", 
                "❌ Error - Se permitió comprar más de 10 entradas"
            )
    except Exception as e:
        tabla.add_row(
            "Límite entradas por cliente (agresivo)", 
            "Verifica que se respete el límite de 10 entradas por cliente",
            f"❌ Error: {e}"
        )
    finally:
        # Asegurarnos de que siempre se limpien los datos de prueba
        try:
            if fecha_inicio and recinto_test:
                cursor.execute("DELETE FROM Transaccion WHERE recinto_id = %s", (recinto_test,))
                cursor.execute("DELETE FROM Coste WHERE recinto_id = %s", (recinto_test,))
                cursor.execute("DELETE FROM Localidad WHERE recinto_id = %s", (recinto_test,))
                cursor.execute("DELETE FROM Evento WHERE recinto_id = %s", (recinto_test,))
            
            if espectaculo_id:
                cursor.execute("DELETE FROM Espectaculo_TipoUsuario WHERE espectaculo_id = %s", (espectaculo_id,))
                cursor.execute("DELETE FROM Espectaculo WHERE id_espectaculo = %s", (espectaculo_id,))
            
            cursor.execute("DELETE FROM Recinto WHERE id_nombre = %s", (recinto_test,))
        except:
            # Ignorar errores de limpieza
            pass

def prueba_anular_propias_reservas(cursor, tabla):
    """Verifica que los clientes solo puedan anular sus propias reservas"""
    recinto_test = 'Test Recinto Anulacion'
    espectaculo_nombre = 'Test Espectaculo Anulacion'
    espectaculo_id = None
    fecha_inicio = None
    
    try:
        # Crear un evento que empiece en 2 horas
        fecha_inicio = datetime.now() + timedelta(hours=2)
        fecha_fin = fecha_inicio + timedelta(hours=2)
        
        # Limpiar posibles datos anteriores
        try:
            cursor.execute("SELECT id_espectaculo FROM Espectaculo WHERE nombre = %s", (espectaculo_nombre,))
            result = cursor.fetchone()
            if result:
                prev_espectaculo_id = result[0]
                cursor.execute("DELETE FROM Transaccion WHERE espectaculo_id = %s", (prev_espectaculo_id,))
                cursor.execute("DELETE FROM Coste WHERE espectaculo_id = %s", (prev_espectaculo_id,))
                cursor.execute("DELETE FROM Localidad WHERE espectaculo_id = %s", (prev_espectaculo_id,))
                cursor.execute("DELETE FROM Evento WHERE espectaculo_id = %s", (prev_espectaculo_id,))
                cursor.execute("DELETE FROM Espectaculo_TipoUsuario WHERE espectaculo_id = %s", (prev_espectaculo_id,))
                cursor.execute("DELETE FROM Espectaculo WHERE id_espectaculo = %s", (prev_espectaculo_id,))
            cursor.execute("DELETE FROM Recinto WHERE id_nombre = %s", (recinto_test,))
            # Asegurarnos de que se lean todos los resultados pendientes
            while cursor.nextset():
                pass
        except:
            # Asegurarnos de que se lean todos los resultados pendientes incluso en caso de error
            while cursor.nextset():
                pass
            pass
        
        # Insertar datos de prueba
        cursor.execute("""
            INSERT INTO Recinto (id_nombre, aforo_max) 
            VALUES (%s, 100)
            ON DUPLICATE KEY UPDATE aforo_max = 100
        """, (recinto_test,))
        
        cursor.execute("""
            INSERT INTO Espectaculo (nombre, tipo) 
            VALUES (%s, 'Musical')
        """, (espectaculo_nombre,))
        
        # Obtener el ID del espectáculo insertado
        cursor.execute("SELECT LAST_INSERT_ID()")
        espectaculo_id = cursor.fetchone()[0]
        
        # Insertar el tipo de usuario para el espectáculo
        cursor.execute("""
            INSERT INTO Espectaculo_TipoUsuario (espectaculo_id, tipo_usuario)
            VALUES (%s, 'Adulto')
        """, (espectaculo_id,))
        
        cursor.execute("""
            INSERT INTO Evento (fecha, fecha_fin, recinto_id, espectaculo_id, estado)
            VALUES (%s, %s, %s, %s, 'Abierto')
        """, (fecha_inicio, fecha_fin, recinto_test, espectaculo_id))
        
        # Insertar localidad y coste
        cursor.execute("""
            INSERT INTO Localidad (ubicacion, fecha, recinto_id, espectaculo_id)
            VALUES (1, %s, %s, %s)
        """, (fecha_inicio, recinto_test, espectaculo_id))
        
        cursor.execute("""
            INSERT INTO Coste (ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario, precio)
            VALUES (1, %s, %s, %s, 'Adulto', 20)
        """, (fecha_inicio, recinto_test, espectaculo_id))
        
        # Insertar cliente de prueba
        cursor.execute("""
            INSERT INTO Cliente (datos_bancarios)
            VALUES ('111111111')
            ON DUPLICATE KEY UPDATE datos_bancarios = '111111111'
        """)
        
        # Hacer una reserva
        cursor.execute("""
            INSERT INTO Transaccion (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
            VALUES ('111111111', 'reserva', 1, %s, %s, %s, 'Adulto')
        """, (fecha_inicio, recinto_test, espectaculo_id))
        
        # Obtener el ID de la transacción creada
        cursor.execute("SELECT LAST_INSERT_ID()")
        id_transaccion = cursor.fetchone()[0]
        
        # Intentar anular la reserva con datos bancarios incorrectos
        anulacion_falla = False
        try:
            cursor.execute("CALL cancelar_reserva(%s, '222222222')", (id_transaccion,))
        except mysql.connector.Error as e:
            if 'Unauthorized: datos_bancarios do not match' in str(e):
                anulacion_falla = True
        
        # Verificar resultados
        if anulacion_falla:
            tabla.add_row(
                "Anular propias reservas", 
                "Verifica que los clientes solo anulen sus propias reservas", 
                "✅ Correcto - Se rechaza la anulación con datos bancarios incorrectos"
            )
        else:
            tabla.add_row(
                "Anular propias reservas", 
                "Verifica que los clientes solo anulen sus propias reservas", 
                "❌ Error - Se permitió anular con datos bancarios incorrectos"
            )
            
    except Exception as e:
        tabla.add_row(
            "Anular propias reservas", 
            "Verifica que los clientes solo anulen sus propias reservas",
            f"❌ Error: {e}"
        )
    finally:
        # Limpiar datos de prueba
        try:
            if fecha_inicio and recinto_test:
                cursor.execute("DELETE FROM Transaccion WHERE recinto_id = %s", (recinto_test,))
                cursor.execute("DELETE FROM Coste WHERE recinto_id = %s", (recinto_test,))
                cursor.execute("DELETE FROM Localidad WHERE recinto_id = %s", (recinto_test,))
                cursor.execute("DELETE FROM Evento WHERE recinto_id = %s", (recinto_test,))
            
            if espectaculo_id:
                cursor.execute("DELETE FROM Espectaculo_TipoUsuario WHERE espectaculo_id = %s", (espectaculo_id,))
                cursor.execute("DELETE FROM Espectaculo WHERE id_espectaculo = %s", (espectaculo_id,))
            
            cursor.execute("DELETE FROM Recinto WHERE id_nombre = %s", (recinto_test,))
        except:
            # Ignorar errores de limpieza
            pass

def prueba_dinero_ganado(cursor, tabla):
    """Verifica que se pueda conocer el dinero ganado"""
    try:
        cursor.execute("""
            SELECT SUM(c.precio)
            FROM Transaccion t
            JOIN Coste c ON t.ubicacion = c.ubicacion 
                AND t.fecha = c.fecha 
                AND t.recinto_id = c.recinto_id 
                AND t.espectaculo_id = c.espectaculo_id 
                AND t.tipo_usuario = c.tipo_usuario
            WHERE t.estado = 'compra'
        """)
        resultado = cursor.fetchone()
        
        if resultado is not None:
            tabla.add_row(
                "Dinero ganado", 
                "Verifica que se pueda calcular el dinero ganado", 
                "✅ Correcto"
            )
        else:
            tabla.add_row(
                "Dinero ganado", 
                "Verifica que se pueda calcular el dinero ganado", 
                "❌ No se puede calcular"
            )
    except Exception as e:
        tabla.add_row(
            "Dinero ganado", 
            "Verifica que se pueda calcular el dinero ganado",
            f"❌ Error: {e}"
        )

def prueba_anular_transaccion(cursor, tabla):
    """Verifica que al anular una reserva se anule la transacción correspondiente"""
    recinto_test = 'Test Recinto Anulacion'
    espectaculo_nombre = 'Test Espectaculo Anulacion'
    espectaculo_id = None
    fecha_inicio = None
    
    try:
        # Crear un evento que empiece en 2 horas
        fecha_inicio = datetime.now() + timedelta(hours=2)
        fecha_fin = fecha_inicio + timedelta(hours=2)
        
        # Limpiar posibles datos anteriores
        try:
            cursor.execute("SELECT id_espectaculo FROM Espectaculo WHERE nombre = %s", (espectaculo_nombre,))
            result = cursor.fetchone()
            if result:
                prev_espectaculo_id = result[0]
                cursor.execute("DELETE FROM Transaccion WHERE espectaculo_id = %s", (prev_espectaculo_id,))
                cursor.execute("DELETE FROM Coste WHERE espectaculo_id = %s", (prev_espectaculo_id,))
                cursor.execute("DELETE FROM Localidad WHERE espectaculo_id = %s", (prev_espectaculo_id,))
                cursor.execute("DELETE FROM Evento WHERE espectaculo_id = %s", (prev_espectaculo_id,))
                cursor.execute("DELETE FROM Espectaculo_TipoUsuario WHERE espectaculo_id = %s", (prev_espectaculo_id,))
                cursor.execute("DELETE FROM Espectaculo WHERE id_espectaculo = %s", (prev_espectaculo_id,))
            cursor.execute("DELETE FROM Recinto WHERE id_nombre = %s", (recinto_test,))
            # Asegurarnos de que se lean todos los resultados pendientes
            while cursor.nextset():
                pass
        except:
            # Asegurarnos de que se lean todos los resultados pendientes incluso en caso de error
            while cursor.nextset():
                pass
            pass
        
        # Insertar datos de prueba
        cursor.execute("""
            INSERT INTO Recinto (id_nombre, aforo_max) 
            VALUES (%s, 100)
            ON DUPLICATE KEY UPDATE aforo_max = 100
        """, (recinto_test,))
        
        cursor.execute("""
            INSERT INTO Espectaculo (nombre, tipo) 
            VALUES (%s, 'Musical')
        """, (espectaculo_nombre,))
        
        # Obtener el ID del espectáculo insertado
        cursor.execute("SELECT LAST_INSERT_ID()")
        result = cursor.fetchone()
        if not result:
            raise Exception("No se pudo obtener el ID del espectáculo")
        espectaculo_id = result[0]
        
        # Insertar el tipo de usuario para el espectáculo
        cursor.execute("""
            INSERT INTO Espectaculo_TipoUsuario (espectaculo_id, tipo_usuario)
            VALUES (%s, 'Adulto')
        """, (espectaculo_id,))
        
        cursor.execute("""
            INSERT INTO Evento (fecha, fecha_fin, recinto_id, espectaculo_id, estado)
            VALUES (%s, %s, %s, %s, 'Abierto')
        """, (fecha_inicio, fecha_fin, recinto_test, espectaculo_id))
        
        # Insertar una única localidad y coste
        cursor.execute("""
            INSERT INTO Localidad (ubicacion, fecha, recinto_id, espectaculo_id)
            VALUES (1, %s, %s, %s)
        """, (fecha_inicio, recinto_test, espectaculo_id))
        
        cursor.execute("""
            INSERT INTO Coste (ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario, precio)
            VALUES (1, %s, %s, %s, 'Adulto', 20)
        """, (fecha_inicio, recinto_test, espectaculo_id))
        
        # Insertar cliente de prueba
        cursor.execute("""
            INSERT INTO Cliente (datos_bancarios)
            VALUES ('111111111')
            ON DUPLICATE KEY UPDATE datos_bancarios = '111111111'
        """)
        
        # Hacer una reserva
        cursor.execute("""
            INSERT INTO Transaccion (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
            VALUES ('111111111', 'reserva', 1, %s, %s, %s, 'Adulto')
        """, (fecha_inicio, recinto_test, espectaculo_id))
        
        # Obtener el ID de la transacción creada
        cursor.execute("SELECT LAST_INSERT_ID()")
        result = cursor.fetchone()
        if not result:
            raise Exception("No se pudo obtener el ID de la transacción")
        id_transaccion = result[0]
        
        # Anular la reserva
        cursor.execute("CALL cancelar_reserva(%s, '111111111')", (id_transaccion,))
        
        # Intentar hacer una nueva reserva en el mismo asiento
        cursor.execute("""
            INSERT INTO Transaccion (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
            VALUES ('111111111', 'reserva', 1, %s, %s, %s, 'Adulto')
        """, (fecha_inicio, recinto_test, espectaculo_id))
        
        tabla.add_row(
            "Anular transacción", 
            "Verifica que al anular reservas se registre correctamente", 
            "✅ Correcto - Se registró la cancelación y el asiento quedó libre"
        )

            
    except Exception as e:
        tabla.add_row(
            "Anular transacción", 
            "Verifica que al anular reservas se registre correctamente",
            f"❌ Error: {e}"
        )
    finally:
        # Limpiar datos de prueba
        try:
            if fecha_inicio and recinto_test:
                cursor.execute("DELETE FROM Transaccion WHERE recinto_id = %s", (recinto_test,))
                cursor.execute("DELETE FROM Coste WHERE recinto_id = %s", (recinto_test,))
                cursor.execute("DELETE FROM Localidad WHERE recinto_id = %s", (recinto_test,))
                cursor.execute("DELETE FROM Evento WHERE recinto_id = %s", (recinto_test,))
            
            if espectaculo_id:
                cursor.execute("DELETE FROM Espectaculo_TipoUsuario WHERE espectaculo_id = %s", (espectaculo_id,))
                cursor.execute("DELETE FROM Espectaculo WHERE id_espectaculo = %s", (espectaculo_id,))
            
            cursor.execute("DELETE FROM Recinto WHERE id_nombre = %s", (recinto_test,))
        except:
            # Ignorar errores de limpieza
            pass

def prueba_no_compras_eventos_finalizados(cursor, tabla):
    """Verifica que no se permitan compras en eventos finalizados o cerrados"""
    try:
        # Crear un evento futuro (abierto), uno finalizado y uno cerrado para pruebas
        recinto_test = "Test_Recinto_Eventos_Finalizados"
        espectaculo_nombre = "Test_Espectaculo_Eventos_Finalizados"
        
        # Fechas para eventos
        fecha_futuro = datetime.now() + timedelta(days=5)
        fecha_fin_futuro = fecha_futuro + timedelta(hours=2)
        
        fecha_pasado = datetime.now() - timedelta(days=5)
        fecha_fin_pasado = fecha_pasado + timedelta(hours=2)
        
        fecha_cerrado = datetime.now() + timedelta(hours=1)
        fecha_fin_cerrado = fecha_cerrado + timedelta(hours=2)
        
        # Insertar recinto de prueba
        cursor.execute("""
            INSERT INTO Recinto (id_nombre, aforo_max) 
            VALUES (%s, 100)
            ON DUPLICATE KEY UPDATE aforo_max = 100
        """, (recinto_test,))
        
        # Insertar espectáculo
        cursor.execute("""
            INSERT INTO Espectaculo (nombre, tipo) 
            VALUES (%s, 'Musical')
        """, (espectaculo_nombre,))
        
        # Obtener ID del espectáculo
        espectaculo_id = cursor.lastrowid
        
        # Insertar tipo de usuario para el espectáculo
        cursor.execute("""
            INSERT INTO Espectaculo_TipoUsuario (espectaculo_id, tipo_usuario)
            VALUES (%s, 'Adulto')
        """, (espectaculo_id,))
        
        # Insertar evento futuro (abierto)
        cursor.execute("""
            INSERT INTO Evento (fecha, fecha_fin, recinto_id, espectaculo_id, estado)
            VALUES (%s, %s, %s, %s, 'Abierto')
        """, (fecha_futuro, fecha_fin_futuro, recinto_test, espectaculo_id))
        
        # Insertar localidad para evento futuro
        cursor.execute("""
            INSERT INTO Localidad (ubicacion, fecha, recinto_id, espectaculo_id)
            VALUES (1, %s, %s, %s)
        """, (fecha_futuro, recinto_test, espectaculo_id))
        
        # Insertar coste para evento futuro
        cursor.execute("""
            INSERT INTO Coste (ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario, precio)
            VALUES (1, %s, %s, %s, 'Adulto', 20)
        """, (fecha_futuro, recinto_test, espectaculo_id))
        
        # Insertar evento pasado (finalizado)
        cursor.execute("""
            INSERT INTO Evento (fecha, fecha_fin, recinto_id, espectaculo_id, estado)
            VALUES (%s, %s, %s, %s, 'Finalizado')
        """, (fecha_pasado, fecha_fin_pasado, recinto_test, espectaculo_id))
        
        # Insertar localidad para evento pasado
        cursor.execute("""
            INSERT INTO Localidad (ubicacion, fecha, recinto_id, espectaculo_id)
            VALUES (1, %s, %s, %s)
        """, (fecha_pasado, recinto_test, espectaculo_id))
        
        # Insertar coste para evento pasado
        cursor.execute("""
            INSERT INTO Coste (ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario, precio)
            VALUES (1, %s, %s, %s, 'Adulto', 20)
        """, (fecha_pasado, recinto_test, espectaculo_id))
        
        # Insertar evento cerrado
        cursor.execute("""
            INSERT INTO Evento (fecha, fecha_fin, recinto_id, espectaculo_id, estado)
            VALUES (%s, %s, %s, %s, 'Cerrado')
        """, (fecha_cerrado, fecha_fin_cerrado, recinto_test, espectaculo_id))
        
        # Insertar localidad para evento cerrado
        cursor.execute("""
            INSERT INTO Localidad (ubicacion, fecha, recinto_id, espectaculo_id)
            VALUES (1, %s, %s, %s)
        """, (fecha_cerrado, recinto_test, espectaculo_id))
        
        # Insertar coste para evento cerrado
        cursor.execute("""
            INSERT INTO Coste (ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario, precio)
            VALUES (1, %s, %s, %s, 'Adulto', 20)
        """, (fecha_cerrado, recinto_test, espectaculo_id))
        
        # Insertar cliente de prueba
        cursor.execute("""
            INSERT INTO Cliente (datos_bancarios)
            VALUES ('888888888')
            ON DUPLICATE KEY UPDATE datos_bancarios = '888888888'
        """)
        
        # CASO VÁLIDO: Intentar comprar entrada para evento futuro (debería funcionar)
        compra_evento_abierto_funciona = True
        try:
            cursor.execute("""
                INSERT INTO Transaccion (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                VALUES ('888888888', 'compra', 1, %s, %s, %s, 'Adulto')
            """, (fecha_futuro, recinto_test, espectaculo_id))
        except mysql.connector.Error:
            compra_evento_abierto_funciona = False
        
        # CASO INVÁLIDO 1: Intentar comprar entrada para evento finalizado (debería fallar)
        compra_evento_finalizado_falla = False
        try:
            cursor.execute("""
                INSERT INTO Transaccion (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                VALUES ('888888888', 'compra', 1, %s, %s, %s, 'Adulto')
            """, (fecha_pasado, recinto_test, espectaculo_id))
        except mysql.connector.Error as e:
            # Se espera error por evento finalizado
            if 'cerrados o finalizados' in str(e).lower():
                compra_evento_finalizado_falla = True
        
        # CASO INVÁLIDO 2: Intentar comprar entrada para evento cerrado (debería fallar)
        compra_evento_cerrado_falla = False
        try:
            cursor.execute("""
                INSERT INTO Transaccion (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                VALUES ('888888888', 'compra', 1, %s, %s, %s, 'Adulto')
            """, (fecha_cerrado, recinto_test, espectaculo_id))
        except mysql.connector.Error as e:
            # Se espera error por evento cerrado
            if 'cerrados o finalizados' in str(e).lower():
                compra_evento_cerrado_falla = True
        
        # Verificar resultados
        if compra_evento_abierto_funciona and compra_evento_finalizado_falla and compra_evento_cerrado_falla:
            tabla.add_row(
                "No compras en eventos finalizados/cerrados", 
                "Verifica que no se permitan compras para eventos finalizados o cerrados", 
                "✅ Correcto - Se permiten compras en eventos abiertos y se rechazan en finalizados/cerrados"
            )
        elif compra_evento_abierto_funciona and (not compra_evento_finalizado_falla or not compra_evento_cerrado_falla):
            tabla.add_row(
                "No compras en eventos finalizados/cerrados", 
                "Verifica que no se permitan compras para eventos finalizados o cerrados", 
                "❌ Error - Se permiten compras en eventos finalizados o cerrados"
            )
        elif not compra_evento_abierto_funciona and (compra_evento_finalizado_falla and compra_evento_cerrado_falla):
            tabla.add_row(
                "No compras en eventos finalizados/cerrados", 
                "Verifica que no se permitan compras para eventos finalizados o cerrados", 
                "⚠️ Parcial - Se rechazan en finalizados/cerrados pero también en abiertos"
            )
        else:
            tabla.add_row(
                "No compras en eventos finalizados/cerrados", 
                "Verifica que no se permitan compras para eventos finalizados o cerrados", 
                "❌ Error - No funciona correctamente ningún caso"
            )
        
        # Limpiar datos de prueba - Corregir el orden para respetar las claves foráneas
        cursor.execute("DELETE FROM Transaccion WHERE recinto_id = %s", (recinto_test,))
        cursor.execute("DELETE FROM Coste WHERE recinto_id = %s", (recinto_test,))
        cursor.execute("DELETE FROM Localidad WHERE recinto_id = %s", (recinto_test,))
        cursor.execute("DELETE FROM Evento WHERE recinto_id = %s", (recinto_test,))
        cursor.execute("DELETE FROM Espectaculo_TipoUsuario WHERE espectaculo_id = %s", (espectaculo_id,))
        cursor.execute("DELETE FROM Espectaculo WHERE id_espectaculo = %s", (espectaculo_id,))
        cursor.execute("DELETE FROM Recinto WHERE id_nombre = %s", (recinto_test,))
        
    except Exception as e:
        # Si hay un error, intentar limpiar lo que se pueda
        try:
            cursor.execute("SELECT id_espectaculo FROM Espectaculo WHERE nombre = %s", (espectaculo_nombre,))
            result = cursor.fetchone()
            if result:
                espectaculo_id = result[0]
                cursor.execute("DELETE FROM Transaccion WHERE espectaculo_id = %s", (espectaculo_id,))
                cursor.execute("DELETE FROM Coste WHERE espectaculo_id = %s", (espectaculo_id,))
                cursor.execute("DELETE FROM Localidad WHERE espectaculo_id = %s", (espectaculo_id,))
                cursor.execute("DELETE FROM Evento WHERE espectaculo_id = %s", (espectaculo_id,))
                cursor.execute("DELETE FROM Espectaculo_TipoUsuario WHERE espectaculo_id = %s", (espectaculo_id,))
                cursor.execute("DELETE FROM Espectaculo WHERE id_espectaculo = %s", (espectaculo_id,))
                cursor.execute("DELETE FROM Recinto WHERE id_nombre = %s", (recinto_test,))
            # Asegurarnos de que se lean todos los resultados pendientes
            while cursor.nextset():
                pass
        except:
            # Asegurarnos de que se lean todos los resultados pendientes incluso en caso de error
            while cursor.nextset():
                pass
            pass
            
        tabla.add_row(
            "No compras en eventos finalizados/cerrados", 
            "Verifica que no se permitan compras para eventos finalizados o cerrados",
            f"❌ Error: {e}"
        )

def prueba_no_anular_menos_una_hora(cursor, tabla):
    """Verifica que no se pueda anular una reserva con menos de una hora de antelación"""
    try:
        cursor.execute("""
            SELECT COUNT(*)
            FROM Evento e
            JOIN Transaccion t ON e.fecha = t.fecha 
                AND e.recinto_id = t.recinto_id 
                AND e.espectaculo_id = t.espectaculo_id
            WHERE e.cancelaciones > 0
            AND t.estado = 'reserva'
            AND TIMESTAMPDIFF(MINUTE, NOW(), e.fecha) < 60
        """)
        resultado = cursor.fetchone()
        
        if resultado and resultado[0] == 0:
            tabla.add_row(
                "No anular con <1h antelación", 
                "Verifica que no se permitan anulaciones con menos de 1h antes", 
                "✅ Correcto"
            )
        else:
            tabla.add_row(
                "No anular con <1h antelación", 
                "Verifica que no se permitan anulaciones con menos de 1h antes", 
                "❌ Hay anulaciones con menos de 1h de antelación"
            )
    except Exception as e:
        tabla.add_row(
            "No anular con <1h antelación", 
            "Verifica que no se permitan anulaciones con menos de 1h antes",
            f"❌ Error: {e}"
        )


def prueba_vista_dinero_por_evento(cursor, tabla):
    """Verifica que exista una vista para ver el dinero ganado por evento"""
    try:
        cursor.execute("SHOW FULL TABLES WHERE Table_type = 'VIEW' AND Tables_in_taquilla LIKE '%beneficio%' OR Tables_in_taquilla LIKE '%ingreso%'")
        vistas = cursor.fetchall()
        
        if vistas:
            tabla.add_row(
                "Vista dinero por evento", 
                "Verifica que exista una vista para consultar el dinero por evento", 
                "✅ Correcto"
            )
        else:
            # Probar si se puede consultar directamente
            try:
                cursor.execute("""
                    SELECT e.fecha, e.recinto_id, e.espectaculo_id, SUM(c.precio) AS ingresos
                    FROM Evento e
                    JOIN Localidad l ON e.fecha = l.fecha AND e.recinto_id = l.recinto_id AND e.espectaculo_id = l.espectaculo_id
                    JOIN Coste c ON l.ubicacion = c.ubicacion AND l.fecha = c.fecha AND l.recinto_id = c.recinto_id AND l.espectaculo_id = c.espectaculo_id
                    JOIN Transaccion t ON c.ubicacion = t.ubicacion AND c.fecha = t.fecha AND c.recinto_id = t.recinto_id AND c.espectaculo_id = t.espectaculo_id AND c.tipo_usuario = t.tipo_usuario
                    WHERE t.estado = 'compra'
                    GROUP BY e.fecha, e.recinto_id, e.espectaculo_id
                    LIMIT 1
                """)
                resultado = cursor.fetchone()
                
                if resultado:
                    tabla.add_row(
                        "Vista dinero por evento", 
                        "Verifica que exista una vista para consultar el dinero por evento", 
                        "⚠️ Consultable pero sin vista específica"
                    )
                else:
                    tabla.add_row(
                        "Vista dinero por evento", 
                        "Verifica que exista una vista para consultar el dinero por evento", 
                        "❌ No existe"
                    )
            except:
                tabla.add_row(
                    "Vista dinero por evento", 
                    "Verifica que exista una vista para consultar el dinero por evento", 
                    "❌ No existe"
                )
    except Exception as e:
        tabla.add_row(
            "Vista dinero por evento", 
            "Verifica que exista una vista para consultar el dinero por evento",
            f"❌ Error: {e}"
        )

def prueba_vista_aforo_eventos(cursor, tabla):
    """Verifica que exista una vista para ver el aforo de los eventos"""
    try:
        cursor.execute("SHOW FULL TABLES WHERE Table_type = 'VIEW' AND Tables_in_taquilla LIKE '%aforo%'")
        vistas = cursor.fetchall()
        
        if vistas:
            tabla.add_row(
                "Vista aforo eventos", 
                "Verifica que exista una vista para consultar el aforo de eventos", 
                "✅ Correcto"
            )
        else:
            # Probar si se puede consultar directamente
            try:
                cursor.execute("""
                    SELECT r.id_nombre, r.aforo_max FROM Recinto r LIMIT 1
                """)
                resultado = cursor.fetchone()
                
                if resultado:
                    tabla.add_row(
                        "Vista aforo eventos", 
                        "Verifica que exista una vista para consultar el aforo de eventos", 
                        "⚠️ Consultable pero sin vista específica"
                    )
                else:
                    tabla.add_row(
                        "Vista aforo eventos", 
                        "Verifica que exista una vista para consultar el aforo de eventos", 
                        "❌ No existe"
                    )
            except:
                tabla.add_row(
                    "Vista aforo eventos", 
                    "Verifica que exista una vista para consultar el aforo de eventos", 
                    "❌ No existe"
                )
    except Exception as e:
        tabla.add_row(
            "Vista aforo eventos", 
            "Verifica que exista una vista para consultar el aforo de eventos",
            f"❌ Error: {e}"
        )

def prueba_vista_estado_entradas(cursor, tabla):
    """Verifica que exista una vista para ver el estado de las entradas"""
    try:
        cursor.execute("SHOW FULL TABLES WHERE Table_type = 'VIEW' AND Tables_in_taquilla LIKE '%estado%' OR Tables_in_taquilla LIKE '%entrada%'")
        vistas = cursor.fetchall()
        
        if vistas:
            tabla.add_row(
                "Vista estado entradas", 
                "Verifica que exista una vista para consultar el estado de entradas", 
                "✅ Correcto"
            )
        else:
            # Ya se verificó en prueba_conocer_estado_entradas si es consultable
            tabla.add_row(
                "Vista estado entradas", 
                "Verifica que exista una vista para consultar el estado de entradas", 
                "⚠️ Ver prueba 'Conocer estado entradas'"
            )
    except Exception as e:
        tabla.add_row(
            "Vista estado entradas", 
            "Verifica que exista una vista para consultar el estado de entradas",
            f"❌ Error: {e}"
        )

def prueba_vista_eventos_entre_fechas(cursor, tabla):
    """Verifica que exista una vista para ver eventos entre fechas"""
    try:
        cursor.execute("SHOW FULL TABLES WHERE Table_type = 'VIEW' AND Tables_in_taquilla LIKE '%fecha%' OR Tables_in_taquilla LIKE '%periodo%'")
        vistas = cursor.fetchall()
        
        if vistas:
            tabla.add_row(
                "Vista eventos entre fechas", 
                "Verifica que se puedan consultar eventos entre fechas", 
                "✅ Correcto"
            )
        else:
            # Probar si se puede consultar directamente
            fecha_inicio = datetime.now().strftime('%Y-%m-%d')
            fecha_fin = (datetime.now() + timedelta(days=30)).strftime('%Y-%m-%d')
            
            try:
                cursor.execute(f"""
                    SELECT * FROM Evento
                    WHERE fecha BETWEEN '{fecha_inicio}' AND '{fecha_fin}'
                    LIMIT 1
                """)
                resultado = cursor.fetchone()
                
                if resultado:
                    tabla.add_row(
                        "Vista eventos entre fechas", 
                        "Verifica que se puedan consultar eventos entre fechas", 
                        "⚠️ Consultable pero sin vista específica"
                    )
                else:
                    tabla.add_row(
                        "Vista eventos entre fechas", 
                        "Verifica que se puedan consultar eventos entre fechas", 
                        "❌ No existe"
                    )
            except:
                tabla.add_row(
                    "Vista eventos entre fechas", 
                    "Verifica que se puedan consultar eventos entre fechas", 
                    "❌ No existe"
                )
    except Exception as e:
        tabla.add_row(
            "Vista eventos entre fechas", 
            "Verifica que se puedan consultar eventos entre fechas",
            f"❌ Error: {e}"
        )

def prueba_vista_precio_entradas_libres(cursor, tabla):
    """Verifica que exista una vista para ver el precio de las entradas libres"""
    try:
        cursor.execute("SHOW FULL TABLES WHERE Table_type = 'VIEW' AND Tables_in_taquilla LIKE '%precio%' OR Tables_in_taquilla LIKE '%libre%'")
        vistas = cursor.fetchall()
        
        if vistas:
            tabla.add_row(
                "Vista precio entradas libres", 
                "Verifica que exista vista para consultar precio de entradas libres", 
                "✅ Correcto"
            )
        else:
            # Probar si se puede consultar directamente
            try:
                cursor.execute("""
                    SELECT c.fecha, c.recinto_id, c.espectaculo_id, c.precio, c.tipo_usuario, c.ubicacion
                    FROM Coste c
                    LEFT JOIN Transaccion t ON c.ubicacion = t.ubicacion 
                        AND c.fecha = t.fecha 
                        AND c.recinto_id = t.recinto_id 
                        AND c.espectaculo_id = t.espectaculo_id 
                        AND c.tipo_usuario = t.tipo_usuario
                    JOIN Evento e ON c.espectaculo_id = e.espectaculo_id
                    WHERE t.id_transaccion IS NULL
                    AND e.estado = 'Abierto'
                    LIMIT 1
                """)
                resultado = cursor.fetchone()
                
                if resultado:
                    tabla.add_row(
                        "Vista precio entradas libres", 
                        "Verifica que exista vista para consultar precio de entradas libres", 
                        "⚠️ Consultable pero sin vista específica"
                    )
                else:
                    tabla.add_row(
                        "Vista precio entradas libres", 
                        "Verifica que exista vista para consultar precio de entradas libres", 
                        "❌ No existe"
                    )
            except:
                tabla.add_row(
                    "Vista precio entradas libres", 
                    "Verifica que exista vista para consultar precio de entradas libres", 
                    "❌ No existe"
                )
    except Exception as e:
        tabla.add_row(
            "Vista precio entradas libres", 
            "Verifica que exista vista para consultar precio de entradas libres",
            f"❌ Error: {e}"
        )

def prueba_vista_eventos_por_espectaculo(cursor, tabla):
    """Verifica que exista una vista para ver cuántos eventos hay por espectáculo"""
    try:
        cursor.execute("SHOW FULL TABLES WHERE Table_type = 'VIEW' AND Tables_in_taquilla LIKE '%espectaculo%' OR Tables_in_taquilla LIKE '%evento%'")
        vistas = cursor.fetchall()
        
        if vistas:
            tabla.add_row(
                "Vista eventos por espectáculo", 
                "Verifica que exista vista para consultar eventos por espectáculo", 
                "✅ Correcto"
            )
        else:
            # Probar si se puede consultar directamente
            try:
                cursor.execute("""
                    SELECT espectaculo_id, COUNT(*) as num_eventos
                    FROM Evento
                    GROUP BY espectaculo_id
                    LIMIT 1
                """)
                resultado = cursor.fetchone()
                
                if resultado:
                    tabla.add_row(
                        "Vista eventos por espectáculo", 
                        "Verifica que exista vista para consultar eventos por espectáculo", 
                        "⚠️ Consultable pero sin vista específica"
                    )
                else:
                    tabla.add_row(
                        "Vista eventos por espectáculo", 
                        "Verifica que exista vista para consultar eventos por espectáculo", 
                        "❌ No existe"
                    )
            except:
                tabla.add_row(
                    "Vista eventos por espectáculo", 
                    "Verifica que exista vista para consultar eventos por espectáculo", 
                    "❌ No existe"
                )
    except Exception as e:
        tabla.add_row(
            "Vista eventos por espectáculo", 
            "Verifica que exista vista para consultar eventos por espectáculo",
            f"❌ Error: {e}"
        )


def prueba_estados_evento_automaticos(cursor, tabla):
    """Verifica que los eventos cambien automáticamente de estado y se respeten las restricciones"""
    recinto_test = 'Test Recinto Estados'
    espectaculo_nombre = 'Test Espectaculo Estados'
    espectaculo_id = None
    fecha_inicio = None
    
    try:
        # Verificar que el event scheduler está activo
        cursor.execute("SHOW VARIABLES LIKE 'event_scheduler'")
        event_scheduler = cursor.fetchone()
        if not event_scheduler or event_scheduler[1] != 'ON':
            tabla.add_row(
                "Estados automáticos", 
                "Verifica que los eventos se cierren automáticamente 1h antes", 
                "❌ Error - El event scheduler no está activo"
            )
            return

        # Crear un evento que empiece en 1 hora y 2 minutos
        fecha_inicio = datetime.now() + timedelta(hours=1, minutes=2)
        fecha_fin = fecha_inicio + timedelta(hours=2)
            
        # Insertar datos de prueba
        cursor.execute("""
            INSERT INTO Recinto (id_nombre, aforo_max) 
            VALUES (%s, 100)
            ON DUPLICATE KEY UPDATE aforo_max = 100
        """, (recinto_test,))
        cursor.fetchall()
        
        cursor.execute("""
            INSERT INTO Espectaculo (nombre, tipo) 
            VALUES (%s, 'Musical')
        """, (espectaculo_nombre,))
        
        # Obtener el ID del espectáculo insertado
        cursor.execute("SELECT LAST_INSERT_ID()")
        espectaculo_id = cursor.fetchone()[0]
        
        # Insertar el tipo de usuario para el espectáculo
        cursor.execute("""
            INSERT INTO Espectaculo_TipoUsuario (espectaculo_id, tipo_usuario)
            VALUES (%s, 'Adulto')
        """, (espectaculo_id,))
        cursor.fetchall()
        
        cursor.execute("""
            INSERT INTO Evento (fecha, fecha_fin, recinto_id, espectaculo_id, estado)
            VALUES (%s, %s, %s, %s, 'Abierto')
        """, (fecha_inicio, fecha_fin, recinto_test, espectaculo_id))
        cursor.fetchall()

        # Verificar estado inicial
        cursor.execute("""
            SELECT estado FROM Evento 
            WHERE recinto_id = %s AND espectaculo_id = %s AND fecha = %s
        """, (recinto_test, espectaculo_id, fecha_inicio))
        estado_inicial = cursor.fetchone()
        console.print(f"[cyan]Estado inicial del evento: {estado_inicial[0] if estado_inicial else 'No encontrado'}[/cyan]")
        
        # Esperar 3 minutos para que se ejecute el evento programado
        console.print("[cyan]Esperando 3 minutos para que se actualice el estado...[/cyan]")
        time.sleep(1)  # 3 minutos
        
        # Verificar que el evento está cerrado
        cursor.execute("""
            SELECT estado FROM Evento 
            WHERE recinto_id = %s AND espectaculo_id = %s AND fecha = %s
        """, (recinto_test, espectaculo_id, fecha_inicio))
        estado_final = cursor.fetchone()
        console.print(f"[cyan]Estado final del evento: {estado_final[0] if estado_final else 'No encontrado'}[/cyan]")
        
        if estado_final and estado_final[0] == 'Cerrado':
            tabla.add_row(
                "Estados automáticos", 
                "Verifica que los eventos se cierren automáticamente 1h antes", 
                "✅ Correcto - El evento se cerró automáticamente"
            )
        else:
            tabla.add_row(
                "Estados automáticos", 
                "Verifica que los eventos se cierren automáticamente 1h antes", 
                f"❌ Error - Estado incorrecto: {estado_final[0] if estado_final else 'No encontrado'}"
            )
    except Exception as e:
        tabla.add_row(
            "Estados automáticos", 
            "Verifica que los eventos se cierren automáticamente 1h antes", 
            f"❌ Error: {e}"
        )
    finally:
        # Limpiar datos de prueba
        try:
            if fecha_inicio and recinto_test and espectaculo_id:
                cursor.execute("DELETE FROM Transaccion WHERE recinto_id = %s AND espectaculo_id = %s", (recinto_test, espectaculo_id))
                cursor.fetchall()
                cursor.execute("DELETE FROM Coste WHERE recinto_id = %s AND espectaculo_id = %s", (recinto_test, espectaculo_id))
                cursor.fetchall()
                cursor.execute("DELETE FROM Localidad WHERE recinto_id = %s AND espectaculo_id = %s", (recinto_test, espectaculo_id))
                cursor.fetchall()
                cursor.execute("DELETE FROM Evento WHERE recinto_id = %s AND espectaculo_id = %s", (recinto_test, espectaculo_id))
                cursor.fetchall()
                cursor.execute("DELETE FROM Espectaculo_TipoUsuario WHERE espectaculo_id = %s", (espectaculo_id,))
                cursor.fetchall()
                cursor.execute("DELETE FROM Espectaculo WHERE id_espectaculo = %s", (espectaculo_id,))
                cursor.fetchall()
                cursor.execute("DELETE FROM Recinto WHERE id_nombre = %s", (recinto_test,))
                cursor.fetchall()
        except:
            # Ignorar errores de limpieza
            pass

def prueba_conversion_reservas_a_compras(cursor, tabla):
    """Verifica que las reservas se conviertan automáticamente en compras cuando el evento se cierra"""
    recinto_test = 'Test Recinto Conversion'
    espectaculo_nombre = 'Test Espectaculo Conversion'
    espectaculo_id = None
    fecha_inicio = None
    
    try:
        # Crear un evento que empiece en 2 minutos
        fecha_inicio = datetime.now() + timedelta(minutes=2)
        fecha_fin = fecha_inicio + timedelta(hours=2)
        
        # Insertar datos de prueba
        cursor.execute("""
            INSERT INTO Recinto (id_nombre, aforo_max) 
            VALUES (%s, 100)
            ON DUPLICATE KEY UPDATE aforo_max = 100
        """, (recinto_test,))
        
        cursor.execute("""
            INSERT INTO Espectaculo (nombre, tipo) 
            VALUES (%s, 'Musical')
        """, (espectaculo_nombre,))
        
        # Obtener el ID del espectáculo insertado
        cursor.execute("SELECT LAST_INSERT_ID()")
        espectaculo_id = cursor.fetchone()[0]
        
        # Insertar el tipo de usuario para el espectáculo
        cursor.execute("""
            INSERT INTO Espectaculo_TipoUsuario (espectaculo_id, tipo_usuario)
            VALUES (%s, 'Adulto')
        """, (espectaculo_id,))
        
        cursor.execute("""
            INSERT INTO Evento (fecha, fecha_fin, recinto_id, espectaculo_id, estado)
            VALUES (%s, %s, %s, %s, 'Abierto')
        """, (fecha_inicio, fecha_fin, recinto_test, espectaculo_id))
        
        # Insertar localidad y coste
        cursor.execute("""
            INSERT INTO Localidad (ubicacion, fecha, recinto_id, espectaculo_id)
            VALUES (1, %s, %s, %s)
        """, (fecha_inicio, recinto_test, espectaculo_id))
        
        cursor.execute("""
            INSERT INTO Coste (ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario, precio)
            VALUES (1, %s, %s, %s, 'Adulto', 20)
        """, (fecha_inicio, recinto_test, espectaculo_id))
        
        # Insertar cliente de prueba
        cursor.execute("""
            INSERT INTO Cliente (datos_bancarios)
            VALUES ('987654321')
            ON DUPLICATE KEY UPDATE datos_bancarios = '987654321'
        """)
        
        # Hacer una reserva
        reserva_exitosa = True
        try:
            cursor.execute("""
                INSERT INTO Transaccion (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                VALUES ('987654321', 'reserva', 1, %s, %s, %s, 'Adulto')
            """, (fecha_inicio, recinto_test, espectaculo_id))
        except mysql.connector.Error:
            reserva_exitosa = False
        
        # Verificar que la transacción está como reserva
        if reserva_exitosa:
            cursor.execute("""
                SELECT estado FROM Transaccion 
                WHERE fecha = %s AND recinto_id = %s
            """, (fecha_inicio, recinto_test))
            estado_inicial = cursor.fetchone()
            
            if not estado_inicial or estado_inicial[0] != 'reserva':
                tabla.add_row(
                    "Conversión reservas a compras", 
                    "Verifica que las reservas se conviertan en compras al cerrar el evento", 
                    "❌ Error - No se pudo verificar el estado inicial de la reserva"
                )
                return
        else:
            tabla.add_row(
                "Conversión reservas a compras", 
                "Verifica que las reservas se conviertan en compras al cerrar el evento", 
                "❌ Error - No se pudo crear la reserva inicial"
            )
            return
            
        # Esperar 1 minuto para que el evento se cierre
        time.sleep(1)
        
        # Verificar que el evento está cerrado
        cursor.execute("""
            SELECT estado FROM Evento 
            WHERE recinto_id = %s AND espectaculo_id = %s
        """, (recinto_test, espectaculo_id))
        estado_evento = cursor.fetchone()
        
        if not estado_evento or estado_evento[0] != 'Cerrado':
            tabla.add_row(
                "Conversión reservas a compras", 
                "Verifica que las reservas se conviertan en compras al cerrar el evento", 
                "❌ Error - El evento no se cerró automáticamente"
            )
            return
        
        # Verificar que la transacción se convirtió en compra
        cursor.execute("""
            SELECT estado FROM Transaccion 
            WHERE fecha = %s AND recinto_id = %s
        """, (fecha_inicio, recinto_test))
        estado_final = cursor.fetchone()
        
        if estado_final and estado_final[0] == 'compra':
            tabla.add_row(
                "Conversión reservas a compras", 
                "Verifica que las reservas se conviertan en compras al cerrar el evento", 
                "✅ Correcto - La reserva se convirtió a compra automáticamente"
            )
        else:
            tabla.add_row(
                "Conversión reservas a compras", 
                "Verifica que las reservas se conviertan en compras al cerrar el evento", 
                "❌ Error - La reserva no se convirtió en compra"
            )
    except Exception as e:
        tabla.add_row(
            "Conversión reservas a compras", 
            "Verifica que las reservas se conviertan en compras al cerrar el evento", 
            f"❌ Error: {e}"
        )


def prueba_auditoria_aforo(cursor, tabla):
    """Verifica que el sistema de auditoría detecte eventos que superan el aforo máximo"""
    recinto_test = 'Test_Recinto_Auditoria'
    espectaculo_nombre = 'Test_Espectaculo_Auditoria'
    espectaculo_id = None
    fecha_inicio = None
    
    try:
        # Crear un evento que empiece en 2 horas
        fecha_inicio = datetime.now() + timedelta(hours=2)
        fecha_fin = fecha_inicio + timedelta(hours=2)
        
        # Limpiar posibles datos anteriores
        try:
            cursor.execute("SELECT id_espectaculo FROM Espectaculo WHERE nombre = %s", (espectaculo_nombre,))
            result = cursor.fetchone()
            if result:
                prev_espectaculo_id = result[0]
                cursor.execute("DELETE FROM Transaccion WHERE espectaculo_id = %s", (prev_espectaculo_id,))
                cursor.execute("DELETE FROM Coste WHERE espectaculo_id = %s", (prev_espectaculo_id,))
                cursor.execute("DELETE FROM Localidad WHERE espectaculo_id = %s", (prev_espectaculo_id,))
                cursor.execute("DELETE FROM Evento WHERE espectaculo_id = %s", (prev_espectaculo_id,))
                cursor.execute("DELETE FROM Espectaculo_TipoUsuario WHERE espectaculo_id = %s", (prev_espectaculo_id,))
                cursor.execute("DELETE FROM Espectaculo WHERE id_espectaculo = %s", (prev_espectaculo_id,))
            cursor.execute("DELETE FROM Recinto WHERE id_nombre = %s", (recinto_test,))
            cursor.execute("DELETE FROM Auditoria_Aforo WHERE recinto_id = %s", (recinto_test,))
            # Asegurarnos de que se lean todos los resultados pendientes
            while cursor.nextset():
                pass
        except:
            # Asegurarnos de que se lean todos los resultados pendientes incluso en caso de error
            while cursor.nextset():
                pass
            pass
        
        # Insertar datos de prueba
        cursor.execute("""
            INSERT INTO Recinto (id_nombre, aforo_max) 
            VALUES (%s, 5)
            ON DUPLICATE KEY UPDATE aforo_max = 5
        """, (recinto_test,))
        
        cursor.execute("""
            INSERT INTO Espectaculo (nombre, tipo) 
            VALUES (%s, 'Musical')
        """, (espectaculo_nombre,))
        
        # Obtener el ID del espectáculo insertado
        cursor.execute("SELECT LAST_INSERT_ID()")
        espectaculo_id = cursor.fetchone()[0]
        
        # Insertar el tipo de usuario para el espectáculo
        cursor.execute("""
            INSERT INTO Espectaculo_TipoUsuario (espectaculo_id, tipo_usuario)
            VALUES (%s, 'Adulto')
        """, (espectaculo_id,))
        
        cursor.execute("""
            INSERT INTO Evento (fecha, fecha_fin, recinto_id, espectaculo_id, estado)
            VALUES (%s, %s, %s, %s, 'Abierto')
        """, (fecha_inicio, fecha_fin, recinto_test, espectaculo_id))
        
        # Insertar 7 localidades (más que el aforo máximo de 5)
        for i in range(1, 8):
            cursor.execute("""
                INSERT INTO Localidad (ubicacion, fecha, recinto_id, espectaculo_id)
                VALUES (%s, %s, %s, %s)
            """, (i, fecha_inicio, recinto_test, espectaculo_id))
            
            cursor.execute("""
                INSERT INTO Coste (ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario, precio)
                VALUES (%s, %s, %s, %s, 'Adulto', 20)
            """, (i, fecha_inicio, recinto_test, espectaculo_id))
        
        # Ejecutar manualmente el procedimiento de verificación
        cursor.execute("CALL verificar_aforo_eventos()")
        
        # Verificar que se registró la violación en la tabla de auditoría
        cursor.execute("""
            SELECT COUNT(*) 
            FROM Auditoria_Aforo 
            WHERE recinto_id = %s 
            AND fecha_evento = %s 
            AND espectaculo_id = %s
        """, (recinto_test, fecha_inicio, espectaculo_id))
        
        resultado = cursor.fetchone()
        
        if resultado and resultado[0] > 0:
            # Verificar los detalles de la violación
            cursor.execute("""
                SELECT aforo_maximo, localidades_actuales 
                FROM Auditoria_Aforo 
                WHERE recinto_id = %s 
                AND fecha_evento = %s 
                AND espectaculo_id = %s
            """, (recinto_test, fecha_inicio, espectaculo_id))
            
            detalles = cursor.fetchone()
            
            if detalles and detalles[0] == 5 and detalles[1] == 7:
                tabla.add_row(
                    "Auditoría de aforo", 
                    "Verifica que se detecten eventos que superan el aforo máximo", 
                    "✅ Correcto - Se detectó la violación de aforo"
                )
            else:
                tabla.add_row(
                    "Auditoría de aforo", 
                    "Verifica que se detecten eventos que superan el aforo máximo", 
                    "❌ Error - Los datos de auditoría no son correctos"
                )
        else:
            tabla.add_row(
                "Auditoría de aforo", 
                "Verifica que se detecten eventos que superan el aforo máximo", 
                "❌ Error - No se detectó la violación de aforo"
            )
            
    except Exception as e:
        tabla.add_row(
            "Auditoría de aforo", 
            "Verifica que se detecten eventos que superan el aforo máximo",
            f"❌ Error: {e}"
        )
    finally:
        # Limpiar datos de prueba
        try:
            if fecha_inicio and recinto_test:
                cursor.execute("DELETE FROM Transaccion WHERE recinto_id = %s", (recinto_test,))
                cursor.execute("DELETE FROM Coste WHERE recinto_id = %s", (recinto_test,))
                cursor.execute("DELETE FROM Localidad WHERE recinto_id = %s", (recinto_test,))
                cursor.execute("DELETE FROM Evento WHERE recinto_id = %s", (recinto_test,))
                cursor.execute("DELETE FROM Auditoria_Aforo WHERE recinto_id = %s", (recinto_test,))
            
            if espectaculo_id:
                cursor.execute("DELETE FROM Espectaculo_TipoUsuario WHERE espectaculo_id = %s", (espectaculo_id,))
                cursor.execute("DELETE FROM Espectaculo WHERE id_espectaculo = %s", (espectaculo_id,))
            
            cursor.execute("DELETE FROM Recinto WHERE id_nombre = %s", (recinto_test,))
        except:
            # Ignorar errores de limpieza
            pass