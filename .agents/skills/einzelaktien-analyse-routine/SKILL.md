---
name: einzelaktien-analyse-routine
description: >-
  Führt eine tiefergehende Unternehmensanalyse für eine (oder mehrere) Aktien durch, formatiert sie als strukturiertes Markdown-Playbook (inkl. Datumsstempel) und legt sie zwingend im Ticker-Archivordner ab. Aktualisiert danach den Einzelaktien-Index, das Logbuch und das MOC-Changelog.
---

# Einzelaktien Analyse Routine

## Overview
Dieser Skill standardisiert die Erstellung von tiefgehenden Einzelaktien-Analysen im Vault. Er zwingt die KI dazu, einen festen Markdown-Standard (inklusive Datumsstempel und Footer-Links) einzuhalten und die Analysen ausnahmslos in den jeweiligen `09_Einzelaktien_ProRealTime\[TICKER]` Ordnern abzulegen. Zudem sorgt der Skill für die automatische Pflege der Index- und MOC-Dateien.

## Dependencies
- `search_web`: Muss zwingend für das Abrufen von aktuellen Finanzdaten (Yahoo Finance) genutzt werden, um Halluzinationen zu vermeiden.

## Quick Start
Wenn der Nutzer sagt: "Führe eine tiefergehende Analyse für Tesla durch", aktiviere diesen Skill.

## Workflow

### 1. Recherche & Datenbeschaffung
- Suche nach aktuellen Livedaten via Yahoo Finance für das angegebene Tickersymbol.
- **Fehlerbehandlung:** Sollten keine sauberen Live-Daten verfügbar sein, nutze dein internes Wissen zur Analyse, setze aber zwingend ein `> [!WARNING]` an den Beginn der Datei mit dem Hinweis, dass aktuelle Finanzkennzahlen fehlen.

### 2. Erstellung der Markdown-Analyse
Es gibt zwei Varianten, je nachdem was der Nutzer anfordert:

**Variante A: Standard "Tiefergehende Analyse"** (Qualitativ & Makro)
Erstelle die Analyse mit exakt folgendem Format und Inhalt:
- **Titel:** `# 🔬 Tiefergehende Analyse: [Firmenname] ([TICKER])`
- **Kategorie & Fokus**
- **Datumsstempel (Zwingend):** `> *Erstellt am: YYYY-MM-DD*` (Nutze das aktuelle Datum)
- **Sektion 1:** Unternehmensprofil & Qualitativer Burggraben
- **Sektion 2:** Makroökonomische Faktoren & Branchentrends
- **Sektion 3:** Quantitative Faktoren & Risiken
- **Sektion 4:** Fazit & Einordnung in das Portfolio

**Variante B: "Fundamentaldaten" / "Kennzahlen"** (Quantitativ & Tabellarisch)
- Wenn der Nutzer explizit nach Fundamentaldaten oder Kennzahlen fragt, öffne zwingend die Datei `01_System_KI/03_scripts/01_Vorlagendateien/fundamentaldaten-vorlage.md` mit `view_file`.
- Fülle die darin enthaltenen Markdown-Tabellen (Aktueller Kurs, Tages-/Wochen-/Monats-/Jahresveränderung, SMA 14/50/200, KGV, Margen, Cashflow etc.) mit den brandaktuellen Yahoo Finance Livedaten aus. Behalte das Tabellenformat exakt bei.
- Dateiname: `Fundamentaldaten_[TICKER].md`

**Für BEIDE Varianten gilt am Ende der Datei:**
- **Tags:** Am Ende der Datei (z.B. `#MSFT #Wachstum #Analyse` oder `#Fundamentaldaten`)
- **Querverlinkung (Wiki-Footer):** Unter den Tags fügst du zwingend einen Block `## 🔗 Weitere Dateien zu diesem Ticker` ein. Lese per `list_dir` den Ticker-Ordner aus und verlinke alle weiteren darin befindlichen Dateien und Bilder als Liste (z.B. `- [[NVDA/NVDA-Täglich.png|NVDA-Täglich.png]]`).
- **Footer-Links (Zwingend):** Ganz am Schluss: `**Links:** [[00_Trading_MOC|Zurück zur Übersicht]] | [[00_Einzelaktien_Index|Einzelaktien Index]]`

### 3. Dateisystem-Ablage
- Speichere die Datei zwingend unter folgendem Pfad:
  `03_Trading_und_Boerse/09_Einzelaktien_ProRealTime/[TICKER]/Analyse_[TICKER].md`
- Erstelle den Ticker-Unterordner automatisch, falls er noch nicht existiert. Speichere Einzelaktienanalysen NIEMALS im Wissens-Ordner.

### 4. MOC & Index Pflege
- Füge das Tickersymbol zwingend im Format `[[TICKER/Dateiname_der_neuen_Analyse|TICKER]]` (z.B. `[[NVDA/Analyse_NVDA|NVDA]]` oder `[[AMD/analyse-heute|AMD]]`) unter der passenden Sektor-Kategorie in der Datei `03_Trading_und_Boerse/09_Einzelaktien_ProRealTime/00_Einzelaktien_Index.md` hinzu. Nutze niemals einfache Root-Links wie `[[TICKER]]` oder Platzhalter, die ins Leere laufen! Der Link muss exakt auf die Datei zeigen, die du in Schritt 3 angelegt hast.
- Protokolliere die Erstellung der Analyse im Changelog der `03_Trading_und_Boerse/00_Trading_MOC.md`.

### 5. Projekt-Logbuch Aktualisierung (Conditional)
- Frage den Nutzer oder prüfe den aktuellen Kontext: Falls diese Analyse Teil eines laufenden Projekts (z.B. Portfolioaufbau) ist, öffne das entsprechende Logbuch (z.B. `Portfolio_Aufbau_Logbuch_2026.md`) und füge einen Link zur neuen Analyse unter der Rubrik "Zugehörige Analysen" am Ende des Logbuchs hinzu.

## Common Mistakes
- **Vergessener Datumsstempel:** Ohne den `Erstellt am:` Vermerk ist die Historie nicht nachvollziehbar.
- **Falscher Speicherort:** Analysen landen oft aus Gewohnheit im Playbooks/Wissen-Ordner. Sie müssen zwingend in den jeweiligen `[TICKER]` Ordner.
- **Keine Live-Daten:** Die KI verlässt sich auf veraltetes Wissen statt `search_web` für Yahoo Finance zu nutzen.
