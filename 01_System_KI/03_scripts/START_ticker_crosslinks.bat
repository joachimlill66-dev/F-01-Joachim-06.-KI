@echo off
color 0B
echo Starte Querverlinkung...
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0ticker_crosslinks_generieren.ps1"
pause
