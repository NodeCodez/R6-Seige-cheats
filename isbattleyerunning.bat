@echo off
SETLOCAL EnableExtensions
set EXE=RainbowSix_BE.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto FOUND
echo ------------------------------------
echo [-] BattleEye is Not running
echo ------------------------------------
goto FIN
:FOUND
echo ------------------------------------
echo [+] BattleEye is running
echo ------------------------------------
:FIN
pause