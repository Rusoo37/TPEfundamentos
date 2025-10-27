#!/bin/bash

echo "Iniciando entorno para el TP..."

# Crear entorno virtual si no existe
if [ ! -d "tpespecial" ]; then
    echo "Creando entorno virtual..."
    python3 -m venv tpespecial
else
    echo "Entorno virtual ya existente."
fi

# Activar entorno virtual
echo "Activando entorno virtual..."
source tpespecial/bin/activate

# Actualizar pip
echo "Actualizando pip..."
pip install --upgrade pip

# Instalar dependencias
if [ -f "requirements.txt" ]; then
    echo "Instalando dependencias desde requirements.txt..."
    pip install -r requirements.txt
else
    echo "No se encontró el archivo requirements.txt"
fi

# Crear kernel de Jupyter
echo "Creando kernel de Jupyter..."
pip install ipykernel
python -m ipykernel install --user --name=tpespecial --display-name "Python (TP Especial)"

echo "Todo listo. ¡A disfrutar del TP!"