import mysql.connector
from datetime import datetime, timedelta
import random

num_filas = 1000000

def generar_tarjeta():
    return ''.join([str(random.randint(0, 9)) for _ in range(16)])

DB_CONFIG = {
    'host': 'localhost',
    'user': 'miviro',
    'password': '7rJYwv8fYYBwEydfHJ1C2Q==',  # Add your password here
    'database': 'mydb'
}

connection = mysql.connector.connect(
    host=DB_CONFIG['host'],
    user=DB_CONFIG['user'],
    password=DB_CONFIG['password'],
    database=DB_CONFIG['database']
)

cursor = connection.cursor()

for _ in range(num_filas):
    datos_bancarios = generar_tarjeta()
    cursor.execute("INSERT INTO Cliente (datos_bancarios) VALUES (%s)", (datos_bancarios,))

connection.commit()

cursor.close()
connection.close()

print("Datos insertados con éxito en la base de datos.")
