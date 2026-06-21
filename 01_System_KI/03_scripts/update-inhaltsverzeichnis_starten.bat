@echo off
title Aktualisiere Inhaltsverzeichnis
echo Starte PowerShell Skript mit umgangenen Sicherheitsrichtlinien...
powershell.exe -ExecutionPolicy Bypass -NoProfile -File "%~dp0update-inhaltsverzeichnis.ps1"
