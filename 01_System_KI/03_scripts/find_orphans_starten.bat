@echo off
title Finde verwaiste Dateien (Orphans)
echo Starte PowerShell Skript mit umgangenen Sicherheitsrichtlinien...
powershell.exe -ExecutionPolicy Bypass -NoProfile -File "%~dp0find_orphans.ps1"
