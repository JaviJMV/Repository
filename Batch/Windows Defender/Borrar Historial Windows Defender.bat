cd C:\ProgramData\Microsoft\Windows Defender
start Scans

set/p A= Que quieres eliminar : History (H) Scans (S) : 
if %A%==H goto :History
if %A%==S goto :Scans

:History
@echo off
set folderPath=C:\ProgramData\Microsoft\Windows Defender\Scans\History

if exist "History" (
    echo Eliminando la carpeta %History%...
    rd /s /q "%History%"
    echo Carpeta eliminada correctamente.
) else (
    echo La carpeta %History% no existe.
)

:Scans
@echo off
set folderPath=C:\ProgramData\Microsoft\Windows Defender\Scans\Scans

if exist "History" (
    echo Eliminando la carpeta %Scans%...
    rd /s /q "%Scans%"
    echo Carpeta eliminada correctamente.
) else (
    echo La carpeta %Scans% no existe.
)

pause