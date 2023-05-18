:Inicio de PRTG
@echo off
echo                ==================================
echo                              = =
echo                   = Ejecutando Servicios y PRTG  =
echo                              = =
echo                ==================================
echo.
net start PRTGProbeService
net start PRTGCoreService
cd C:\Program Files (x86)\PRTG Network Monitor
"PRTG GUI Starter" start
echo Presiona enter para finalizar el programa
pause> nul 
:Cierre de PRTG
echo                ==================================
echo                              = =
echo                   = Apagando Servicios y PRTG  =
echo                              = =
echo                ==================================
echo.
net stop PRTGCoreService
net stop PRTGProbeService
close