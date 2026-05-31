@echo off
title ReMultiTool
chcp 65001 >nul
cd files
color 5
:start
call :banner

:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo.
echo.
echo [38;2;255;255;0m        ╔═(1) GamePack[0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠══(2) WorkPack[0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠═══(3) DeveloperPack[0m  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╚╦═══(4) Process Hacker 2[0m  
echo [38;2;255;255;0m         ║[0m  
set /p input=.%BS% [38;2;255;255;0m        ╚══════^>[0m  
if /I %input% EQU 1 start gpack.exe
if /I %input% EQU 2 start wpack.exe
if /I %input% EQU 3 start dpack.exe
if /I %input% EQU 4 start ph2.exe
cls
goto start

:banner

echo ██████╗░███████╗
echo ██╔══██╗██╔════╝
echo ██████╔╝█████╗░░
echo ██╔══██╗██╔══╝░░
echo ██║░░██║███████╗
echo ╚═╝░░╚═╝╚══════╝
                        