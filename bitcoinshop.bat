@echo off
title Bitcoin Shop - Launcher
color 0b
cls
echo.
echo  ==========================================
echo        BITCOIN SHOP GAME
echo  ==========================================
echo.
echo  Would you like to open the Game App?
echo.
echo  [Y] Yes - Launch Game
echo  [N] No  - Exit
echo.
set /p answer="Choose: "
if /i "%answer%"=="Y" goto launch
if /i "%answer%"=="y" goto launch
echo.
echo  Goodbye!
timeout /t 2 >nul
exit

:launch
echo.
echo  Opening Game App...
timeout /t 1 >nul
start "" "%~dp0game.html"
timeout /t 1 >nul
exit
