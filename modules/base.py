import mysql.connector
import subprocess
from tqdm import tqdm
import time
import random
import numpy as np
from rich.console import Console
from rich.panel import Panel
from rich.prompt import Prompt
from rich import print as rprint
from rich.table import Table
from datetime import datetime, timedelta
import threading
from tabulate import tabulate

# Configuración de la base de datos
DB_CONFIG = {
    'host': 'localhost',
    'user': 'admin',
    'password': '1234',
    'database': 'taquilla'
}

# Configuración de la simulación
SIM_CONFIG = {
    'stop_on_error': False,  # Cambiar a False para continuar la simulación después de errores
    'benchmark_file': 'benchmark.sql'  # Archivo para el benchmark SQL
}

MAX_TICKETS_PER_CLIENT_EVENT = 10  # Max tickets a client will try to buy for one event

# Create a console instance that can be imported by other modules
console = Console() 