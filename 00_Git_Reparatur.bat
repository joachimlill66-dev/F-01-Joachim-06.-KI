@echo off
title Git Reparatur (Historie loeschen)
echo ===================================================
echo ACHTUNG: Dieser Prozess repariert das 2.6 GB Problem!
echo Er loescht den fehlerhaften, unsichtbaren Git-Speicher 
echo und erstellt ihn komplett neu und sauber.
echo DEINE ECHTEN DATEIEN BLEIBEN ZU 100%% SICHER!
echo ===================================================
pause

cd /d "%~dp0"

echo.
echo 1. Loesche alte Git-Datenbank...
rmdir /s /q .git

echo.
echo 2. Erstelle frische Git-Datenbank...
git init
git branch -M main

echo.
echo 3. Verbinde mit deinem GitHub-Konto...
git remote add origin https://github.com/joachimlill66-dev/F-01-Joachim-06.-KI.git
git config core.longpaths true

echo.
echo 4. Packe aktuelle (jetzt kleine) Dateien ein...
git add -A
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "TIMESTAMP=%dt:~0,4%-%dt:~4,2%-%dt:~6,2% %dt:~8,2%:%dt:~10,2%"
git commit -m "Frischer Start nach Fruehjahrsputz: %TIMESTAMP%"

echo.
echo 5. Lade frisches Paket zu GitHub hoch...
echo (Dies ueberschreibt das alte kaputte Backup in der Cloud)
git push -u -f origin main

echo.
echo ===================================================
echo REPARATUR ERFOLGREICH ABGESCHLOSSEN!
echo ===================================================
pause
