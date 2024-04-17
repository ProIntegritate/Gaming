@echo off
rem Change the next line to the name of your server game name.
set SERVERGAMENAME=Mainserver
rem This script also requires 7zip somewhere in %PATH%.
rem Either that or write the full path to 7Zip in this script.

echo ------------------------------------------------------------
echo Backing up: "%SERVERGAMENAME%" server savegame folder...
echo ------------------------------------------------------------
echo **** %DATE% - %TIME% (Started)
echo ------------------------------------------------------------
cd "%userprofile%\Zomboid\Saves\Multiplayer"

echo * Deleting .old backup files...
echo y | del backup.zip.old
echo y | del backup.player.zip.old

echo * Renaming previous backup files to .old (so you can revert to them).
echo y | move backup.zip backup.zip.old
echo y | move backup.player.zip backup.player.zip.old

echo * Backing up world... (creating new backup files)
cd %SERVERGAMENAME%
7z a ..\backup.zip -r -mx1 >nul
cd ..

echo * Backing up localplayer profile (if any)...
cd %SERVERGAMENAME%_player
7z a ..\backup.player.zip -r -mx1 >nul

echo ------------------------------------------------------------
echo **** %DATE% - %TIME% (BACKUP DONE)
echo ------------------------------------------------------------
pause
