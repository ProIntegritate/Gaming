@echo off
rem Change the next line to the name of your server game name.
set SERVERGAMENAME=Mainserver
rem This script also requires 7zip somewhere in %PATH%.
rem Either that or write the full path to 7Zip in this script.

echo ------------------------------------------------------------
echo Restoring: "%SERVERGAMENAME%" server savegame folder...
echo ------------------------------------------------------------
echo **** %DATE% - %TIME% (Started)
echo ------------------------------------------------------------
cd "%userprofile%\Zomboid\Saves\Multiplayer"

echo * Restoring server world...
mkdir %SERVERGAMENAME% >nul
cd %SERVERGAMENAME%
rmdir /s /q . >nul
7z x ..\backup.zip >nul
cd ..

echo * Restoring localplayer profile...
mkdir %SERVERGAMENAME%_player >nul
cd %SERVERGAMENAME%_player
cd
rmdir /s /q . >nul
7z x ..\backup.player.zip >nul

echo ------------------------------------------------------------
echo **** %DATE% - %TIME% (RESTORE DONE)
echo ------------------------------------------------------------
pause
