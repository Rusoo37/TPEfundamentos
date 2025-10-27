@echo off
echo Iniciando entorno para el TP Especial...

REM Crear entorno virtual si no existe
IF NOT EXIST tpespecial (
    echo Creando entorno virtual...
    python -m venv tpespecial
) ELSE (
    echo Entorno virtual ya existente.
)

REM Activar entorno virtual
echo Activando entorno virtual...
call .\tpespecial\Scripts\activate

REM Actualizar pip
echo Actualizando pip...
python -m pip install --upgrade pip

REM Instalar dependencias
IF EXIST requirements.txt (
    echo Instalando dependencias desde requirements.txt...
    pip install -r requirements.txt
) ELSE (
    echo No se encontró el archivo requirements.txt
)

REM Crear kernel de Jupyter
echo Creando kernel de Jupyter...
pip install ipykernel
python -m ipykernel install --user --name=tpespecial --display-name "Python (TP Especial)"

echo Todo listo. ¡A disfrutar del TP Especial!

pause