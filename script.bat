@echo off
setlocal enabledelayedexpansion

:: Ruta de la imagen
set "imagen=C:\troll.jpg"
set "veces=1000"

:: Verificar si la imagen existe
if not exist "%imagen%" (
    echo ERROR: La imagen no se encuentra en C:\troll.jpg
    pause
    exit
)

:: Agregar sonidos del sistema 
set "sonidos[0]=C:\Windows\Media\chimes.wav"
set "sonidos[1]=C:\Windows\Media\notify.wav"
:: Iniciar la calculadora en un proceso independiente (inmediatamente)
start "" C:\Windows\System32\calc.exe

:: Abrir la imagen 1000 veces
for /l %%i in (1,1,%veces%) do (
    start "" "%imagen%"
    ping 127.0.0.1 -n 1 -w 200 >nul
)

:: Bucle infinito para abrir la Calculadora (intentar con diferentes métodos)
:inicio
start "" ms-calculator:
ping 127.0.0.1 -n 1 >nul
goto inicio








echo Has sobrevivido al virus xddd.