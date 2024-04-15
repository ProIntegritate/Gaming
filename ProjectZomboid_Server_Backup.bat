@echo off
rem This requires 7zip somewhere in %PATH%. Either that or write the full path to 7Zip in this script.
rem Change the "cd Modtest" and "cd Modtest_player" lines below to the name of the server game you want to backup.
echo ------------------------------------------------------------
echo Backing up: "Modtest" server savegame folder...
echo ------------------------------------------------------------
echo **** %DATE% - %TIME% (Started)
echo ------------------------------------------------------------
cd "%userprofile%\Zomboid\Saves\Multiplayer"

echo * Deleting old backup files...
echo y | del backup.zip.old
echo y | del backup.player.zip.old

echo * Renaming previous backup files to .old (so you can revert to them).
echo y | move backup.zip backup.zip.old
echo y | move backup.player.zip backup.player.zip.old
echo * Backing up world...
cd Modtest
7z a ..\backup.zip -r -mx1 >nul
cd ..
echo * Backing up localplayer profile (if any)...
cd Modtest_player
7z a ..\backup.player.zip -r -mx1 >nul
echo ------------------------------------------------------------
echo **** %DATE% - %TIME% (BACKUP DONE)
echo ------------------------------------------------------------
timeout 60
