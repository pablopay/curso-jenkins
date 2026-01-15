#!/bin/bash

echo "Iniciando ejecución de pruebas en Jenkins..."

# Verificar si el entorno virtual existe
if [ ! -d "venv" ]; then
    echo "Entorno virtual no encontrado. Creándolo..."
    python3 -m venv venv
fi

# Activar el entorno virtual
if [ -f "venv/bin/activate" ]; then
    source venv/bin/activate
elif [ -f "venv/Scripts/activate" ]; then
    source venv/Scripts/activate   # Para Windows
else
    echo "Error: No se pudo activar el entorno virtual."
    exit 1
fi

# Instalar dependencias
echo "Instalando dependencias..."
pip install --upgrade pip
pip install -r requirements.txt

# Crear carpeta de reportes si no existe
mkdir -p reports

# Ejecutar las pruebas con pytest
echo "Ejecutando pruebas con pytest..."
venv/bin/python -m pytest tests/ \
    --junitxml=reports/test-results.xml \
    --html=reports/report.html \
    --self-contained-html

echo "Pruebas finalizadas. Reportes en reports/"
