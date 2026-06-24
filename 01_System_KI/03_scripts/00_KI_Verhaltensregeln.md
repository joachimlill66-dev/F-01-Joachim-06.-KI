# 🤖 KI Verhaltensregeln für diesen Vault

> [!IMPORTANT]
> Diese Datei definiert die harten System-Regeln und Workflow-Automatismen für die KI-Assistenz in diesem Obsidian-Vault. Jede KI-Instanz muss sich zwingend an diese Vorgaben halten.

## 1. 🚨 Wichtigste Datenregel (Anti-Halluzination & Zuverlässigkeit)
Der Assistent muss zwingend über das Tool `search_web` Live-Daten abfragen, wenn es um Märkte, Kurse oder Nachrichten geht. Dabei gilt ab sofort eine absolute Qualitätssicherung: **Nutze als Suchanfrage immer explizit "Yahoo Finance" (z.B. `site:finance.yahoo.com [Ticker] pre-market price`).** Bei internationalen Aktien (wie ASML) MUSS zwingend der US-Dollar-Kurs (NASDAQ/NYSE) und nicht das europäische ADR-Listing abgefragt werden, um PnL-Fehler zu vermeiden! Er darf sich NIEMALS eigene, veraltete oder fiktive Aktienkurse ausdenken. Falls eine Zahl nicht gefunden wird, MUSS mit `N/A` befüllt werden. Platzhalter sind strengstens verboten!
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
- **Querverlinkung in Ticker-Ordnern (Wiki-Logik):** Jede Markdown-Datei, die sich in einem Einzelaktien-Ordner (z.B. `GOOGL`) befindet, MUSS zwingend ganz am Ende einen Footer-Block mit der Überschrift `## 🔗 Weitere Dateien zu diesem Ticker` enthalten. Darunter müssen alle weiteren Dateien desselben Ordners (inklusive Bilder/Screenshots) per Wiki-Link verlinkt werden (z.B. `- [[GOOGL/Analyse_GOOGL|Analyse_GOOGL]]` oder `- 🖼️ [[GOOGL/GOOGL-Täglich.png|GOOGL-Täglich.png]]`). So bauen wir ein internes Wiki pro Ticker auf.
- **Strikte Verlinkungs-Regel (Keine toten Links):** Wenn wir auf eine Seite einen Link oder Ticker einbauen (z.B. im `00_Einzelaktien_Index.md`), dann MUSS dieser zwingend zur exakten, bereits existierenden Zieldatei im korrekten Ordner führen (z.B. `[[AMD/analyse-2026-06-21|AMD]]`). Es ist strengstens verboten, blind Platzhalter-Links wie `[[TICKER]]` oder `[[TICKER/Analyse_TICKER|TICKER]]` zu generieren, wenn diese dazu führen, dass Klicks ins Leere laufen und versehentlich leere Seiten in Obsidian erzeugt werden! Prüfe immer den echten Dateinamen.
- **Tagebuch & Protokoll:** Am Ende des Tages unaufgefordert in `02_Tagebuch/` generieren. Alte Einträge monatlich nach `99_Archiv_Medien/Tagebuch/[YYYY-MM]/` verschieben.

## 8. Automatismen (Portfolio & Trading Journal)

### 8.1. Live-Kurse & `/portfolio` Befehl
Sobald der Befehl `/portfolio` aufgerufen wird, zwingend Livedaten per Websuche abfragen! Hierbei **MUSS** immer explizit eine hochzuverlässige Quelle wie "Yahoo Finance" für die Kursabfrage (inkl. Währungs-Check USD) genutzt werden.
- `Portfolio-Übersicht.md` (im Ordner `08_Portfolio_Dashboard`) aktualisieren.
- In `Portfolio-Historie.md` eine neue Tabellenzeile hinzufügen.
- Einen Snapshot im exakten Pfad `03_Trading_und_Boerse\08_Portfolio_Dashboard\Snapshots\YYYY-MM-DD-portfolio-bestand.md` speichern.

### 8.2. CSV-Import Workflow (Order-Listen & Portfolios)
Wenn eine neue CSV-Datei (z.B. `Order-Liste.2026-06-24...csv`) im Ordner `08_Portfolio_Dashboard\Snapshots` abgelegt wird oder der Nutzer mich darauf hinweist, **MUSS** dieser Workflow vollständig durchlaufen werden:
1. **Portfolio-Check:** Lese die Daten aus, aktualisiere die offene `Portfolio-Übersicht.md` (Exposure, Cash, Bestände) und füge eine neue Tabellenzeile in die `Portfolio-Historie.md` ein.
2. **Trading Journal (Master-Tabelle):** Filtere die CSV nach geschlossenen Trades (Richtung: Verkauf, Status: Ausgeführt). Trage diese Trades mit exaktem Gewinn/Verlust (PnL), Datum und Haltedauer in die Master-Tabelle in `10_Trading_Journal\00_Journal_Uebersicht.md` ein.
3. **Post-Trade-Analyse:** Für JEDEN neu geschlossenen Trade (egal ob Gewinn oder Verlust) **MUSS** automatisch eine Datei (`YYYY-MM-DD-Post-Trade-TICKER.md`) im Ordner `10_Trading_Journal\02_Post_Trade_Analysen\` angelegt und in der Master-Tabelle verlinkt werden. Nutze dafür die `post-trade-vorlage.md`.

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

## 13. MOC-Pflege, Changelogs & Footer-Verlinkung (Der MOC-Audit)
In jedem der Hauptordner liegt zwingend eine `00_*_MOC.md` Datei (oder Index-Datei) als zentrales Inhaltsverzeichnis. 
**Die harte Arbeitsanweisung lautet:** 
- **Changelog-Pflicht:** Wann immer Änderungen (Dateien gelöscht, verschoben, neu erstellt oder Ordnerstrukturen angepasst) vorgenommen werden, MUSS dies zwingend, schön und nachvollziehbar im Changelog der jeweiligen Übersichtsseite dokumentiert werden.
- **Footer-Pflicht ("Weitere Dateien zu diesem Ordner"):** Sobald ein neuer Link oder eine neue Datei zu einem Verzeichnis hinzukommt, MUSS dieser zwingend ganz unten in den Footer-Bereich (`## 🔗 Weitere Dateien zu diesem Ordner/Ticker`) eingetragen werden. So bleibt immer sauber nachvollziehbar, was alles im Ordner liegt und man kann blitzschnell hin- und herspringen.
- **Bruchsicherheit:** Tote Links müssen proaktiv aufgedeckt und korrigiert werden. Diese Instandhaltung hat absolute Priorität!
