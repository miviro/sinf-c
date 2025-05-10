import mysql.connector
import random
import time
from datetime import datetime, timedelta
import string
import subprocess
from tqdm import tqdm

# Database configuration
DB_CONFIG = {
    'host': 'localhost',
    'user': 'miviro',
    'password': '7rJYwv8fYYBwEydfHJ1C2Q==',  # Add your password here
    'database': 'mydb'
}

def generate_random_string(length=10):
    return ''.join(random.choices(string.ascii_letters + string.digits, k=length))

def generate_random_date():
    start_date = datetime.now()
    end_date = start_date + timedelta(days=365)
    random_date = start_date + timedelta(
        days=random.randint(0, (end_date - start_date).days)
    )
    return random_date.strftime('%Y-%m-%d')

def test_clients(cursor, num_tests):
    successful = 0
    failed = 0
    print("\nTest 1: Inserting random clients...")
    start_time = time.time()
    
    # Prepare bulk insert data
    batch_size = 1000
    for i in tqdm(range(0, num_tests, batch_size), desc="Inserting clients"):
        try:
            current_batch = min(batch_size, num_tests - i)
            values = [(generate_random_string(20),) for _ in range(current_batch)]
            cursor.executemany("INSERT INTO Cliente (datos_bancarios) VALUES (%s)", values)
            successful += current_batch
        except Exception as e:
            failed += current_batch
            print(f"Error inserting batch of clients: {e}")
    
    end_time = time.time()
    return successful, failed, end_time - start_time

def test_recintos(cursor, num_tests):
    successful = 0
    failed = 0
    print("\nTest 2: Inserting random recintos...")
    start_time = time.time()
    
    for i in tqdm(range(0, num_tests, batch_size), desc="Inserting recintos"):
        try:
            current_batch = min(batch_size, num_tests - i)
            values = [(generate_random_string(15), random.randint(100, 10000)) for _ in range(current_batch)]
            cursor.executemany("INSERT INTO Recinto (id_nombre, aforo_max) VALUES (%s, %s)", values)
            successful += current_batch
        except Exception as e:
            failed += current_batch
            print(f"Error inserting batch of recintos: {e}")
    
    end_time = time.time()
    return successful, failed, end_time - start_time

def test_espectaculos(cursor, num_tests):
    successful = 0
    failed = 0
    print("\nTest 3: Inserting random espectaculos...")
    start_time = time.time()
    
    tipos = ['Deportivo', 'Musical', 'Educativo']
    for i in tqdm(range(0, num_tests, batch_size), desc="Inserting espectaculos"):
        try:
            current_batch = min(batch_size, num_tests - i)
            values = [(random.randint(1, 10000), generate_random_string(20), random.choice(tipos)) 
                     for _ in range(current_batch)]
            cursor.executemany("INSERT INTO Espectaculo (id_espectaculo, nombre, tipo) VALUES (%s, %s, %s)", values)
            successful += current_batch
        except Exception as e:
            failed += current_batch
            print(f"Error inserting batch of espectaculos: {e}")
    
    end_time = time.time()
    return successful, failed, end_time - start_time

def test_complex_queries(cursor, num_tests):
    successful = 0
    failed = 0
    print("\nTest 4: Running complex queries...")
    start_time = time.time()
    
    for _ in tqdm(range(num_tests), desc="Running queries"):
        try:
            cursor.execute("""
                SELECT t.id_transaccion, c.datos_bancarios, e.nombre
                FROM Transaccion t
                JOIN Cliente c ON t.datos_bancarios = c.datos_bancarios
                JOIN Espectaculo e ON t.espectaculo_id = e.id_espectaculo
                LIMIT 10
            """)
            successful += 1
        except Exception as e:
            failed += 1
            print(f"Error in complex query: {e}")
    
    end_time = time.time()
    return successful, failed, end_time - start_time

def test_ticket_limit(cursor, num_tests):
    successful = 0
    failed = 0
    print("\nTest 5: Testing ticket limit per client per event...")
    start_time = time.time()
    
    # First, create necessary test data
    try:
        print("\nSetting up test data...")
        # Create a test client
        test_client = generate_random_string(20)
        print(f"Created test client: {test_client}")
        cursor.execute("INSERT INTO Cliente (datos_bancarios) VALUES (%s)", (test_client,))
        
        # Create a test recinto
        test_recinto = generate_random_string(15)
        print(f"Created test venue: {test_recinto}")
        cursor.execute("INSERT INTO Recinto (id_nombre, aforo_max) VALUES (%s, %s)", 
                      (test_recinto, 1000))
        
        # Create a test espectaculo
        test_espectaculo = random.randint(1, 10000)
        print(f"Created test show with ID: {test_espectaculo}")
        cursor.execute("INSERT INTO Espectaculo (id_espectaculo, nombre, tipo) VALUES (%s, %s, %s)",
                      (test_espectaculo, "Test Show", "Musical"))
        
        # Create a test event
        test_fecha = generate_random_date()
        print(f"Created test event for date: {test_fecha}")
        cursor.execute("INSERT INTO Evento (fecha, recinto_id, espectaculo_id, estado, fecha_fin) VALUES (%s, %s, %s, %s, %s)",
                      (test_fecha, test_recinto, test_espectaculo, "Abierto", test_fecha))
        
        # Insert user types
        print("Creating user types...")
        user_types = ['Jubilado', 'Adulto', 'Infantil', 'Parado', 'Bebe']
        for user_type in user_types:
            try:
                cursor.execute("INSERT INTO TiposDeUsuarios (tipo_usuario) VALUES (%s)", (user_type,))
                print(f"  Added user type: {user_type}")
            except Exception as e:
                if "Duplicate entry" not in str(e):
                    raise e
                print(f"  User type {user_type} already exists")
        
        # Create multiple locations and their costs
        print("\nCreating locations and costs...")
        locations = []
        for i in range(1, 12):  # Create 11 locations (we need 11 for the test)
            try:
                cursor.execute("INSERT INTO Localidad (ubicacion, fecha, recinto_id, espectaculo_id) VALUES (%s, %s, %s, %s)",
                             (i, test_fecha, test_recinto, test_espectaculo))
                cursor.execute("INSERT INTO Coste (ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario, precio) VALUES (%s, %s, %s, %s, %s, %s)",
                             (i, test_fecha, test_recinto, test_espectaculo, "Adulto", 50))
                locations.append(i)
                print(f"  Created location {i} with cost entry")
            except Exception as e:
                print(f"  Error creating location {i}: {e}")
                raise e
        
        # Add espectaculo-tipo_usuario relationship
        print("Creating espectaculo-user type relationship...")
        cursor.execute("INSERT INTO Espectaculo_TipoUsuario (espectaculo_id, tipo_usuario) VALUES (%s, %s)",
                      (test_espectaculo, "Adulto"))
        
        print("\nStarting ticket purchase attempts...")
        print("=" * 80)
        # Try to insert 11 tickets (should fail on the 11th)
        for i in range(11):
            try:
                current_location = locations[i]
                print(f"\n📝 Attempt {i+1}/11:")
                print(f"  Client: {test_client}")
                print(f"  Event: {test_fecha} at {test_recinto}")
                print(f"  Show ID: {test_espectaculo}")
                print(f"  Location: {current_location}")
                print(f"  User Type: Adulto")
                
                cursor.execute("""
                    INSERT INTO Transaccion 
                    (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
                    VALUES (%s, %s, %s, %s, %s, %s, %s)
                """, (test_client, "compra", current_location, test_fecha, test_recinto, test_espectaculo, "Adulto"))
                
                # Get the transaction ID
                cursor.execute("SELECT LAST_INSERT_ID()")
                trans_id = cursor.fetchone()[0]
                
                if i < 10:
                    successful += 1
                    print(f"✓ Successfully purchased ticket {i+1}")
                    print(f"  Transaction ID: {trans_id}")
                    
                    # Get current ticket count
                    cursor.execute("""
                        SELECT COUNT(*) 
                        FROM Transaccion 
                        WHERE datos_bancarios = %s 
                        AND fecha = %s 
                        AND recinto_id = %s 
                        AND espectaculo_id = %s
                    """, (test_client, test_fecha, test_recinto, test_espectaculo))
                    current_count = cursor.fetchone()[0]
                    print(f"  Current ticket count: {current_count}/10")
                else:
                    failed += 1
                    print("✗ Unexpected success on 11th ticket (should have failed)")
                print("-" * 80)
            except Exception as e:
                if i == 10 and "Maximum ticket limit" in str(e):
                    successful += 1
                    print(f"✓ Successfully caught ticket limit error: {str(e)}")
                    print(f"  Expected behavior: Limit of 10 tickets reached")
                else:
                    failed += 1
                    print(f"✗ Unexpected error on ticket {i+1}: {str(e)}")
                print("-" * 80)
        
        # Verify final ticket count
        cursor.execute("""
            SELECT COUNT(*) 
            FROM Transaccion 
            WHERE datos_bancarios = %s 
            AND fecha = %s 
            AND recinto_id = %s 
            AND espectaculo_id = %s
        """, (test_client, test_fecha, test_recinto, test_espectaculo))
        final_count = cursor.fetchone()[0]
        print(f"\n📊 Final Results:")
        print(f"  Total tickets purchased: {final_count}/10")
        print(f"  Expected limit: 10 tickets")
        print(f"  Test {'PASSED' if final_count == 10 else 'FAILED'}")
        
    except Exception as e:
        print(f"\n✗ Error in test setup: {e}")
        failed += 1
    
    end_time = time.time()
    print("\nTest Summary:")
    print(f"✓ Successful operations: {successful}")
    print(f"✗ Failed operations: {failed}")
    print(f"⏱️  Total time: {end_time - start_time:.2f} seconds")
    
    return successful, failed, end_time - start_time

def test_reservation_cancellation(cursor, num_tests):
    successful = 0
    failed = 0
    print("\nTest 6: Testing reservation cancellation...")
    start_time = time.time()
    
    try:
        print("\nSetting up test data...")
        # Create a test client
        test_client = generate_random_string(20)
        print(f"Created test client: {test_client}")
        cursor.execute("INSERT INTO Cliente (datos_bancarios) VALUES (%s)", (test_client,))
        
        # Create a test recinto
        test_recinto = generate_random_string(15)
        print(f"Created test venue: {test_recinto}")
        cursor.execute("INSERT INTO Recinto (id_nombre, aforo_max) VALUES (%s, %s)", 
                      (test_recinto, 1000))
        
        # Create a test espectaculo
        test_espectaculo = random.randint(1, 10000)
        print(f"Created test show with ID: {test_espectaculo}")
        cursor.execute("INSERT INTO Espectaculo (id_espectaculo, nombre, tipo) VALUES (%s, %s, %s)",
                      (test_espectaculo, "Test Show", "Musical"))
        
        # Create a test event
        test_fecha = generate_random_date()
        print(f"Created test event for date: {test_fecha}")
        cursor.execute("INSERT INTO Evento (fecha, recinto_id, espectaculo_id, estado, fecha_fin, cancelaciones) VALUES (%s, %s, %s, %s, %s, %s)",
                      (test_fecha, test_recinto, test_espectaculo, "Abierto", test_fecha, 0))
        
        # Insert user type
        print("Creating user type...")
        try:
            cursor.execute("INSERT INTO TiposDeUsuarios (tipo_usuario) VALUES (%s)", ("Adulto",))
            print("  Added user type: Adulto")
        except Exception as e:
            if "Duplicate entry" not in str(e):
                raise e
            print("  User type Adulto already exists")
        
        # Create location and cost
        print("\nCreating location and cost...")
        try:
            cursor.execute("INSERT INTO Localidad (ubicacion, fecha, recinto_id, espectaculo_id) VALUES (%s, %s, %s, %s)",
                         (1, test_fecha, test_recinto, test_espectaculo))
            cursor.execute("INSERT INTO Coste (ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario, precio) VALUES (%s, %s, %s, %s, %s, %s)",
                         (1, test_fecha, test_recinto, test_espectaculo, "Adulto", 50))
            print("  Created location 1 with cost entry")
        except Exception as e:
            print(f"  Error creating location: {e}")
            raise e
        
        # Add espectaculo-tipo_usuario relationship
        print("Creating espectaculo-user type relationship...")
        cursor.execute("INSERT INTO Espectaculo_TipoUsuario (espectaculo_id, tipo_usuario) VALUES (%s, %s)",
                      (test_espectaculo, "Adulto"))
        
        print("\nMaking test reservation...")
        # Make a reservation
        cursor.execute("""
            INSERT INTO Transaccion 
            (datos_bancarios, estado, ubicacion, fecha, recinto_id, espectaculo_id, tipo_usuario)
            VALUES (%s, %s, %s, %s, %s, %s, %s)
        """, (test_client, "reserva", 1, test_fecha, test_recinto, test_espectaculo, "Adulto"))
        
        # Get the transaction ID
        cursor.execute("SELECT LAST_INSERT_ID()")
        trans_id = cursor.fetchone()[0]
        print(f"Created reservation with ID: {trans_id}")
        
        # Get initial cancelaciones count
        cursor.execute("""
            SELECT cancelaciones 
            FROM Evento 
            WHERE fecha = %s AND recinto_id = %s AND espectaculo_id = %s
        """, (test_fecha, test_recinto, test_espectaculo))
        initial_cancelaciones = cursor.fetchone()[0]
        print(f"Initial cancelaciones count: {initial_cancelaciones}")
        
        print("\nCanceling reservation...")
        # Cancel the reservation
        cursor.execute("CALL cancelar_reserva(%s)", (trans_id,))
        
        # Verify the reservation was deleted
        cursor.execute("""
            SELECT COUNT(*) 
            FROM Transaccion 
            WHERE id_transaccion = %s
        """, (trans_id,))
        reservation_exists = cursor.fetchone()[0]
        
        # Get final cancelaciones count
        cursor.execute("""
            SELECT cancelaciones 
            FROM Evento 
            WHERE fecha = %s AND recinto_id = %s AND espectaculo_id = %s
        """, (test_fecha, test_recinto, test_espectaculo))
        final_cancelaciones = cursor.fetchone()[0]
        
        print(f"Final cancelaciones count: {final_cancelaciones}")
        
        # Verify results
        if reservation_exists == 0 and final_cancelaciones == initial_cancelaciones + 1:
            successful += 1
            print("✓ Test passed: Reservation was successfully canceled and counter was incremented")
        else:
            failed += 1
            print("✗ Test failed: Reservation cancellation did not work as expected")
            print(f"  Reservation exists: {reservation_exists}")
            print(f"  Cancelaciones increment: {final_cancelaciones - initial_cancelaciones}")
        
    except Exception as e:
        failed += 1
        print(f"\n✗ Error in test: {e}")
    
    end_time = time.time()
    print("\nTest Summary:")
    print(f"✓ Successful operations: {successful}")
    print(f"✗ Failed operations: {failed}")
    print(f"⏱️  Total time: {end_time - start_time:.2f} seconds")
    
    return successful, failed, end_time - start_time

def reset_database():
    print("\nResetting database...")
    try:
        # Connect without database selected
        conn = mysql.connector.connect(
            host=DB_CONFIG['host'],
            user=DB_CONFIG['user'],
            password=DB_CONFIG['password']
        )
        cursor = conn.cursor()
        
        # Drop and recreate database
        cursor.execute("DROP DATABASE IF EXISTS mydb")
        cursor.execute("CREATE DATABASE mydb")
        cursor.close()
        conn.close()
        
        # Run the SQL script
        subprocess.run('mysql -u miviro -p7rJYwv8fYYBwEydfHJ1C2Q== mydb < taquilla.sql', shell=True)
        print("Database reset complete!")
    except Exception as e:
        print(f"Error resetting database: {e}")

def display_menu():
    print("\n=== Database Stress Test Menu ===")
    print("1. Test Client Insertions")
    print("2. Test Recinto Insertions")
    print("3. Test Espectaculo Insertions")
    print("4. Test Complex Queries")
    print("5. Test Ticket Limit")
    print("6. Test Reservation Cancellation")
    print("7. Run All Tests")
    print("8. Reset Database")
    print("0. Exit")
    return input("Select an option (0-8): ")

def stress_test_database():
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor()
        
        num_tests = 1000000
        
        while True:
            choice = display_menu()
            
            if choice == '0':
                break
            elif choice == '1':
                s, f, t = test_clients(cursor, num_tests)
            elif choice == '2':
                s, f, t = test_recintos(cursor, num_tests)
            elif choice == '3':
                s, f, t = test_espectaculos(cursor, num_tests)
            elif choice == '4':
                s, f, t = test_complex_queries(cursor, num_tests)
            elif choice == '5':
                s, f, t = test_ticket_limit(cursor, 1)  # Only need to run once
            elif choice == '6':
                s, f, t = test_reservation_cancellation(cursor, 1)  # Only need to run once
            elif choice == '7':
                s1, f1, t1 = test_clients(cursor, num_tests)
                s2, f2, t2 = test_recintos(cursor, num_tests)
                s3, f3, t3 = test_espectaculos(cursor, num_tests)
                s4, f4, t4 = test_complex_queries(cursor, num_tests)
                s5, f5, t5 = test_ticket_limit(cursor, 1)
                s6, f6, t6 = test_reservation_cancellation(cursor, 1)
                s = s1 + s2 + s3 + s4 + s5 + s6
                f = f1 + f2 + f3 + f4 + f5 + f6
                t = t1 + t2 + t3 + t4 + t5 + t6
            elif choice == '8':
                cursor.close()
                conn.close()
                reset_database()
                conn = mysql.connector.connect(**DB_CONFIG)
                cursor = conn.cursor()
                continue
            else:
                print("Invalid option. Please try again.")
                continue
            
            print("\nTest Results:")
            print(f"Total time: {t:.2f} seconds")
            print(f"Successful operations: {s}")
            print(f"Failed operations: {f}")
            print(f"Operations per second: {(s + f) / t:.2f}")
            
            # Commit after each test
            conn.commit()
            
            input("\nPress Enter to continue...")
        
        cursor.close()
        conn.close()
        
    except mysql.connector.Error as err:
        print(f"Database error: {err}")
    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    stress_test_database() 