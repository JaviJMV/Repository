@echo off
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
if %P%==123 goto INICIO
color 74
if not %P%==123 echo Clave incorrecta
pause
cls
if not %P%==123 goto PASSWORD
:CALCULADORA
:: Asigno color
color f5
:: Borrado de historial
cls
echo Elija la operacion que desea realizar
echo.
:PASO1
:: SIGNO= SUMA,RESTA,MULTIPLICA,DIVIDE
set/p SIGNO= Suma(+), Resta(-), Multiplica(*), Divide(/): 
echo.
:: NUM1
set/p NUM1= Escribe el primer numero: 
:: NUM2 
set/p NUM2= Escribe el segundo numero: 
echo.
:: RES  
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
:: Borrado de historial
cls
:: CONTINUAR
echo.Desea hacer mas calculos
set/p CONTINUAR= Si(s) o No(n) : 
if %CONTINUAR%==s goto INICIO
if %CONTINUAR%==n goto CERRAR
cls
:CERRAR
cls
echo Hasta la proxima, pulsa una tecla para salir
pause> nul 
exit





