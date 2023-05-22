@echo off
echo.Bienvenido a la version 0.0.1 Esta version incluye la calculadora de windows.
echo.
:LOGIN
color 0a
set/p L= Introduce tu nombre de usuario : 
if %L%==Javi echo Usuario confirmado
if %L%==Javi goto PASSWORD
color 74
if not %L%==Javi echo Usuario incorrecto
pause
cls
if not %L%==Javi goto LOGIN
:PASSWORD
color 0a
set/p P= Introduce tu clave de acceso : 
if %P%==123 echo Clave confirmada
if %P%==123 goto SUBMENU
color 74
if not %P%==123 echo Clave incorrecta
pause
cls
if not %P%==123 goto PASSWORD
:SUBMENU
cls
color F2
echo.Bienvenido a tu sistema operativo
set/p SM= CalculadoraCMD(1) CalculadoraWindows (2) : 
if %SM%==1 goto CALCULADORACMD
if %SM%==2 goto CALCULADORAWINDOWS
:CALCULADORACMD
color f5
cls
echo Elija la operacion que desea realizar
echo.
:PASO1
set/p SIGNO= Suma(+), Resta(-), Multiplica(*), Divide(/): 
echo.
set/p NUM1= Escribe el primer numero: 
set/p NUM2= Escribe el segundo numero: 
echo.
if %SIGNO%==+ set/a RES= %NUM1% + %NUM2%
if %SIGNO%==- set/a RES= %NUM1% - %NUM2%
if %SIGNO%==* set/a RES= %NUM1% * %NUM2%
if %SIGNO%==/ set/a RES= %NUM1% / %NUM2%
cls
echo (%NUM1%%SIGNO%%NUM2%)
echo Estas de acuerdo
set/p CORRECTO= Si(s), No(n) : 
echo.
if %CORRECTO%==s goto PASO2
if %CORRECTO%==n goto PASO1
:PASO2
cls
color f0
echo.El resultado de %NUM1%%SIGNO%%NUM2% es : %RES%
pause
cls
echo.Desea hacer mas calculos
set/p CONTINUAR= Si(s) o No(n) : 
if %CONTINUAR%==s goto INICIO
if %CONTINUAR%==n goto CERRAR
cls
:CALCULADORAWINDOWS
start calc
goto SUBMENU
:CERRAR
cls
echo Hasta la proxima
pause
exit