from .base import console, DB_CONFIG
import mysql.connector
import subprocess

def reset_database():
    """Reinicia la base de datos a su estado inicial"""
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