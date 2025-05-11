from .base import console
from .reset_db import reset_database
from .populate_db import poblar_base_datos
from .view_event import ver_evento
from .simulation import simular
from .benchmark import generar_benchmark_sql
from .test_battery import ejecutar_bateria_pruebas
from rich.prompt import Prompt

def mostrar_menu():
    """Muestra el menú principal y maneja la selección del usuario"""
    while True:
        console.print("\n[bold blue]=== MENÚ PRINCIPAL ===[/bold blue]")
        console.print("1. Resetear base de datos")
        console.print("2. Poblar base de datos")
        console.print("3. Ver evento")
        console.print("4. Simular")
        console.print("5. Generar benchmark SQL")
        console.print("6. Ejecutar batería de pruebas")
        console.print("0. Salir")
        
        opcion = Prompt.ask("\nSeleccione una opción", choices=["0", "1", "2", "3", "4", "5", "6"], default="0")
        
        if opcion == "0":
            console.print("[bold green]¡Hasta luego![/bold green]")
            break
        elif opcion == "1":
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
            ejecutar_bateria_pruebas() 