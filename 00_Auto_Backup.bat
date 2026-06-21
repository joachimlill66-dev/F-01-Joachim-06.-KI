@echo off
title Vault Auto-Backup (Git)
echo ====================================
echo Starte Backup-Prozess...
echo ====================================

cd /d "%~dp0"

echo.
echo [0/3] Konfiguriere Git fuer extrem lange Dateinamen...
git config core.longpaths true

echo.
echo [1/3] Fuege alle neuen Dateien hinzu (git add -A)...
git add -A
if %ERRORLEVEL% neq 0 (
    echo.
    echo ====================================
    echo FEHLER: "git add" ist fehlgeschlagen!
    echo ====================================
    pause
    exit /b
)

echo.
echo [2/3] Erstelle lokalen Speicherpunkt (git commit)...
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "TIMESTAMP=%dt:~0,4%-%dt:~4,2%-%dt:~6,2% %dt:~8,2%:%dt:~10,2%"

git commit -m "Auto-Backup: %TIMESTAMP%"
if %ERRORLEVEL% neq 0 (
    echo.
    echo Hinweis: Git sagt, es gibt nichts Neues zum Speichern.
)

echo.
echo [3/3] Lade zu GitHub hoch (git push)...
git push
if %ERRORLEVEL% neq 0 (
    echo.
    echo ====================================
    echo FEHLER BEIM HOCHLADEN! (git push)
    echo ====================================
    pause
    exit /b
)

echo.
echo ====================================
echo ERFOLG! Alles ist auf GitHub gesichert!
echo ====================================
pause
