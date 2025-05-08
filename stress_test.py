import mysql.connector
import random
import time
from datetime import datetime, timedelta
import string
import subprocess

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
    for i in range(0, num_tests, batch_size):
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
    
    for _ in range(num_tests):
        try:
            id_nombre = generate_random_string(15)
            aforo_max = random.randint(100, 10000)
            cursor.execute("INSERT INTO Recinto (id_nombre, aforo_max) VALUES (%s, %s)",
                         (id_nombre, aforo_max))
            successful += 1
        except Exception as e:
            failed += 1
            print(f"Error inserting recinto: {e}")
    
    end_time = time.time()
    return successful, failed, end_time - start_time

def test_espectaculos(cursor, num_tests):
    successful = 0
    failed = 0
    print("\nTest 3: Inserting random espectaculos...")
    start_time = time.time()
    
    tipos = ['Deportivo', 'Musical', 'Educativo']
    for _ in range(num_tests):
        try:
            id_espectaculo = random.randint(1, 10000)
            nombre = generate_random_string(20)
            tipo = random.choice(tipos)
            cursor.execute("INSERT INTO Espectaculo (id_espectaculo, nombre, tipo) VALUES (%s, %s, %s)",
                         (id_espectaculo, nombre, tipo))
            successful += 1
        except Exception as e:
            failed += 1
            print(f"Error inserting espectaculo: {e}")
    
    end_time = time.time()
    return successful, failed, end_time - start_time

def test_complex_queries(cursor, num_tests):
    successful = 0
    failed = 0
    print("\nTest 4: Running complex queries...")
    start_time = time.time()
    
    for _ in range(num_tests):
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
    print("5. Run All Tests")
    print("6. Reset Database")
    print("0. Exit")
    return input("Select an option (0-6): ")

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
                s1, f1, t1 = test_clients(cursor, num_tests)
                s2, f2, t2 = test_recintos(cursor, num_tests)
                s3, f3, t3 = test_espectaculos(cursor, num_tests)
                s4, f4, t4 = test_complex_queries(cursor, num_tests)
                s = s1 + s2 + s3 + s4
                f = f1 + f2 + f3 + f4
                t = t1 + t2 + t3 + t4
            elif choice == '6':
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