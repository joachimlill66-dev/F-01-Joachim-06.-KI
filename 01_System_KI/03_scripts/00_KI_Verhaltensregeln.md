# 🤖 KI Verhaltensregeln für diesen Vault

> [!IMPORTANT]
> Diese Datei definiert die harten System-Regeln und Workflow-Automatismen für die KI-Assistenz in diesem Obsidian-Vault. Jede KI-Instanz muss sich zwingend an diese Vorgaben halten.

## 1. 🚨 Wichtigste Datenregel (Anti-Halluzination)
Der Assistent muss zwingend über das Tool `search_web` Live-Daten abfragen (z.B. Yahoo Finance), wenn es um Märkte, Kurse oder Nachrichten geht. Er darf sich NIEMALS eigene, veraltete oder fiktive Aktienkurse/Indizes ausdenken! Falls eine spezifische Zahl nicht sofort gefunden wird, MUSS mit weiteren Suchanfragen nachgebohrt oder das Feld streng mit `N/A` befüllt werden. Platzhalter sind strengstens verboten!

## 2. Änderungsprotokoll in den MOCs (Map of Content)
Jeder Hauptordner in diesem Vault besitzt eine eigene MOC-Datei, die als zentrales Inhaltsverzeichnis und **Änderungsprotokoll (Changelog)** dient. Wann immer die KI Dateien erstellt, modifiziert oder löscht, **MUSS** ein Protokolleintrag in der jeweiligen MOC hinterlassen werden.
- Datumsformat: `YYYY.MM.DD`
- Sektion: `## 📝 Änderungsprotokoll (Changelog)`

## 3. Obsidian-Wiki-Links für Dateiverweise
Wann immer die KI auf eine andere Datei, ein Bild oder einen Screenshot verweist, **MUSS zwingend die Obsidian-Wiki-Link-Syntax** `[[Dateiname]]` verwendet werden. Nackte Dateipfade sind verboten.

## 4. Globale Ordner-Struktur & Marktübersichten
- `00_Inbox` / `01_System_KI`: Eingang (Inbox) sowie zentraler Ort für KI-Dateien und Skripte.
- `02_Tagebuch`: Hier wird alles (z. B. Trading-Tagebuch) sauber protokolliert.
- `03_Trading_und_Boerse`: Der Ort für Trading, Aktien, Portfolios.
  - Speziell: `01_Marktueberblick` enthält zwingend Unterordner wie `Daily Market Update` und `market-updates`.
  - Speziell: `08_Portfolio_Dashboard` ist die Zentrale für deine Live-Depots und Übersichten.
  - Speziell: `09_Einzelaktien_ProRealTime` dient als Archiv für tiefe Aktien-Analysen, getrennt nach Ticker.
- `04_Wissen_Ressourcen`: Speicherort für die Knowledge Base.
- `05_Projekte`: Laufende Projekte.
- `99_Archiv_Medien`: Archiv-Ordner.

## 5. Datums- und Änderungsstempel auf Dokumenten
- **Neues Dokument:** `> *Erstellt am: YYYY-MM-DD*` direkt unter der Hauptüberschrift.
- **Überarbeitetes Dokument:** `> *Zuletzt bearbeitet am: YYYY-MM-DD*` aktualisieren.

## 6. Ticker-Symbole (Tags)
Wann immer Unternehmen besprochen werden, MUSS die KI am Ende der Datei (oder im Chat) Tickersymbole als Tags hinzufügen (z.B. `#AMZN`, `#AAPL`).

## 7. Speicher-Regeln für spezifische Dokumente
- **Prompt-Bibliothek:** Wertvolle Prompts automatisch als Markdown in `01_System_KI/02_prompts/` speichern.
- **Einzelaktien-Analysen:** Immer im Archiv-Ordner der Aktie unter `03_Trading_und_Boerse/09_Einzelaktien_ProRealTime/` ablegen.
- **Tagebuch & Protokoll:** Am Ende des Tages unaufgefordert in `02_Tagebuch/` generieren. Alte Einträge monatlich nach `99_Archiv_Medien/Tagebuch/[YYYY-MM]/` verschieben.

## 8. Automatismen & Live-Kurse (Portfolio)
Sobald der Befehl `/portfolio` aufgerufen wird, zwingend Livedaten per Websuche abfragen!
- `Portfolio-Übersicht.md` (im Ordner `08_Portfolio_Dashboard`) aktualisieren.
- In `Portfolio-Historie.md` eine neue Tabellenzeile hinzufügen.
- Einen Snapshot im exakten Pfad `03_Trading_und_Boerse\08_Portfolio_Dashboard\Snapshots\YYYY-MM-DD-portfolio-bestand.md` speichern.

## 9. Befehlsübersicht (Slash-Commands)
- **`/portfolio`:** Tagesaktuellen Depot-Stand abrufen (inklusive Websuche & Snapshot).
- **`/create-skill`:** Verwandelt den letzten Chat-Workflow in eine permanente KI-Fähigkeit (über den `workflow-skill-creator`).
- **`/shutdown`:** Session beenden, MOCs updaten, Aufräumen.
- **`/create-plan`:** Strukturierten Bauplan in `01_System_KI\90_Plans` anlegen vor Projektbeginn.
- **`/goal`:** Fokus-Modus für komplexe/nächtliche Aufgaben.
- **`/schedule`:** Cronjobs/Timer verwalten.
- **`/status`:** Aktive Cronjobs auflisten (und ggf. aus `aktive-cronjobs.md` starten).
- **`/grill-me`:** KI schlüpft in Interviewer-Rolle, um Ideen kritisch zu hinterfragen.

## 10. Shutdown-Routine & Inhaltsverzeichnis
Beim `/shutdown` MÜSSEN die MOCs aktualisiert werden. Zudem MUSS nach Ordner-Änderungen das Skript `01_System_KI\03_scripts\update-inhaltsverzeichnis.ps1` ausgeführt werden.

## 11. Vorlagen (Templates) & Zielordner
Wann immer eine neue Vorlage (Template) in `01_System_KI\03_scripts\01_Vorlagendateien\` erstellt oder bearbeitet wird, MUSS zwingend ganz am Ende der Datei der exakte Zielpfad notiert werden.
Format: `**📂 Zielordner für fertige Datei:** [Pfad]`
Dies stellt sicher, dass die KI beim Ausfüllen der Vorlage immer weiß, wo das finale Dokument gespeichert werden muss. Zusätzlich müssen Vorlagen, die Daten abfragen, zwingend mit einer `[!CAUTION]` Warnung zur verpflichtenden Nutzung von `search_web` (Live-Daten) versehen werden.

## 12. Anti-Fragilität (Querverweise & Dateipfade)
Um zu verhindern, dass Cronjobs, Prompts oder interne Skripte zerbrechen, wenn Ordner verschoben oder umbenannt werden, gelten ab sofort folgende Regeln für die KI:
- **Keine harten Windows-Pfade:** Nutze in automatisierten Prompts (z.B. in `aktive-cronjobs.md` oder `befehls-uebersicht.md`) NIEMALS absolute Pfade (`f:\...`) für Vorlagen oder Quelldateien. Nutze stattdessen immer Obsidian-Wiki-Links `[[Dateiname]]`. Die KI ist intelligent genug, die Datei anhand des Namens selbständig im Vault zu finden.
- **Proaktiver Refactoring-Check:** Wann immer ein Ordner oder eine Systemdatei umbenannt oder verschoben wird, MUSS die KI proaktiv per `grep_search` prüfen, ob der alte Pfad noch in den Cronjobs oder den Verhaltensregeln festgeschrieben ist, und diesen sofort aktualisieren.

## 13. MOC-Pflege & Systemweite Fehlerkontrolle (Der MOC-Audit)
In jedem der 7 Hauptordner liegt zwingend eine `00_*_MOC.md` Datei als zentrales Inhaltsverzeichnis. 
**Die harte Arbeitsanweisung lautet:** Wann immer tiefgreifende Ordner-Struktur-Änderungen vorgenommen, Pläne archiviert oder Dateien gelöscht/verschoben werden, MUSS die KI unaufgefordert alle relevanten MOC-Dateien öffnen, auf "Fehlverzweigungen" (tote Links zu gelöschten/verschobenen Dateien) überprüfen, diese bereinigen und die Aktion zwingend im Changelog des jeweiligen MOCs dokumentieren. Diese dauerhafte Instandhaltung hat absolute Priorität!
