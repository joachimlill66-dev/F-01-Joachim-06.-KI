# 🎮 Befehls-Übersicht (Cheat Sheet)

Hier findest du alle wichtigen Befehle und "Shortcuts", mit denen du mein System (dein Zweites Gehirn) steuern kannst. Gib diese Befehle einfach direkt in unser Chat-Fenster ein.

---

## ⚙️ Eigene System-Befehle (Unsere Workflows)
Diese Befehle haben wir spezifisch für deinen Workspace entwickelt.

- **`/start`**  
  **Wofür?** Der perfekte Start in den Tag.  
  **Was passiert?** Ich lade sofort alle wichtigen Strategien, Kontextdateien und deine Instruktionen in mein Gedächtnis, damit ich für die kommende Session perfekt "eingestellt" bin.

- **`/shutdown`**  
  **Wofür?** Der saubere Abschluss deiner Arbeitssitzung.  
  **Was passiert?** Ich räume auf, schreibe automatisch den Eintrag für das `02_Tagebuch`, sichere (committe) alle deine Dateien über Git und gebe dir eine finale Zusammenfassung des Tages.

- **`/create-plan`**  
  **Wofür?** Wenn du ein größeres, komplexes Projekt starten willst (z.B. ein neues Aktien-Screening).  
  **Was passiert?** Ich fange nicht wild an, sondern erstelle dir erst einmal einen strukturierten Bauplan im Ordner `90_Plans`, den du in Ruhe überprüfen kannst.

- **`/implement`**  
  **Wofür?** Der Startschuss für die Ausführung.  
  **Was passiert?** Sobald wir uns auf einen Plan geeinigt haben, führt dieser Befehl dazu, dass ich aktiv werde und die tatsächliche Arbeit (Dateien schreiben, Code generieren) umsetze.

---

## ⚡ Schnellbefehle (Alltags-Shortcuts)
Kurze, praktische Befehle für häufige Aktionen im Tagesgeschäft.

### 📝 Notizen & Dokumentation

- **`/status`**  
  **Wofür?** Dein Dashboard auf einen Blick.  
  **Was passiert?** Ich durchsuche dein Tagebuch, Protokolle und Backlogs und zeige dir: offene Aufgaben, heutige Termine, letzte Änderungen und anstehende Ideen.

- **`/tagebuch`**  
  **Wofür?** Schnell den heutigen Tagebuch-Eintrag anlegen oder öffnen.  
  **Was passiert?** Ich erstelle (oder öffne) die Datei `2026-XX-XX-tagebuch.md` im `02_Tagebuch`-Ordner mit der richtigen Datumsformatierung und Grundstruktur.

- **`/protokoll`**  
  **Wofür?** Tagesergebnis dokumentieren — was wurde geschafft, was ist offen.  
  **Was passiert?** Ich erstelle (oder öffne) die Datei `2026-XX-XX-protokoll.md` im `02_Tagebuch`-Ordner. Ideal als Ergänzung zum `/shutdown`.

- **`/backlog [Idee]`**  
  **Wofür?** Schnell eine Idee oder Aufgabe festhalten.  
  **Was passiert?** Ich füge den Eintrag direkt in den „Ideen-Backlog"-Abschnitt deines heutigen Protokolls ein. Gibt es noch kein Protokoll für heute, lege ich es an.

- **`/changelog`**  
  **Wofür?** Zeigt dir, was sich in den letzten Tagen im Vault verändert hat.  
  **Was passiert?** Ich prüfe die Git-Historie und liste alle kürzlich geänderten, neuen oder gelöschten Dateien chronologisch auf.

### 📈 Trading & Portfolio

- **`/analyse [Aktie]`**  
  **Wofür?** Eine schnelle technische Analyse einer Aktie erstellen.  
  **Was passiert?** Ich nutze deine [[analyse-vorlage]] und fülle sie mit aktuellen Daten zu Kurs, Trend, Unterstützung/Widerstand und Indikatoren. Das Ergebnis wird im passenden Portfolio-Ordner gespeichert.

- **`/portfolio`**  
  **Wofür?** Schneller Überblick über dein aktuelles Depot mit echten Live-Kursen.  
  **Was passiert?** Ich mache automatisch eine Websuche nach den tagesaktuellen Aktienkursen, aktualisiere deine [[Portfolio-Übersicht]] damit und zeige dir erst dann kompakt deinen echten Gewinn/Verlust, Positionen und anstehende Earnings.

- **`/markt`**  
  **Wofür?** Sofort einen aktuellen Marktüberblick abrufen — ohne auf den 16-Uhr-Cronjob zu warten.  
  **Was passiert?** Ich erstelle ein kompaktes Markt-Briefing (Indizes, Sentiment, wichtige News) und speichere es im `03_Trading_und_Boerse\01_Marktueberblick`-Ordner.

### 🗂️ Vault-Verwaltung

- **`/clip [URL]`**  
  **Wofür?** Internet-Seiten sofort in deinem Vault archivieren.  
  **Was passiert?** Ich rufe die Webseite ab, wandle sie in sauberes Markdown um und speichere sie mit Metadaten (Autor, Datum, Quelle) im `04_Wissen_Ressourcen\Web_Archiv`-Ordner.

- **`/toc`**  
  **Wofür?** Das globale Inhaltsverzeichnis auf den neuesten Stand bringen.  
  **Was passiert?** Ich führe das TOC-Skript aus und aktualisiere die [[00_Inhaltsverzeichnis.md]] mit allen neuen und geänderten Dateien.

- **`/commit [Nachricht]`**  
  **Wofür?** Zwischensicherung deiner Arbeit via Git — ohne den vollen `/shutdown`.  
  **Was passiert?** Alle aktuellen Änderungen werden mit einer kurzen Commit-Nachricht gespeichert. Wenn du keine Nachricht angibst, generiere ich automatisch eine passende.

- **`/search [Begriff]`**  
  **Wofür?** Deinen gesamten Vault nach einem Stichwort durchsuchen.  
  **Was passiert?** Ich durchsuche alle Markdown-Dateien und zeige dir die Treffer mit Dateiname, Zeile und Kontext — deutlich schneller als manuelles Suchen.

- **`/template [Typ]`**  
  **Wofür?** Schnell eine neue Notiz aus einer deiner Vorlagen erstellen.  
  **Was passiert?** Ich zeige dir die verfügbaren Vorlagen (Analyse, Market-Update, Marktüberblick, Trade-Journal) und erstelle daraus eine neue, fertig ausgefüllte Datei am richtigen Ort.  
  **Typen:** `analyse`, `market-update`, `marktueberblick`, `trade-journal`

- **`/aufräumen`**  
  **Wofür?** Inbox und Vault in Ordnung bringen.  
  **Was passiert?** Ich prüfe deinen `00_Inbox`-Ordner auf unverarbeitete Notizen, finde verwaiste Dateien ohne Wiki-Links und schlage vor, wo alles hingehört. Nichts wird ohne deine Bestätigung verschoben.



## 🤖 Native KI-Befehle (Eingebaute Superkräfte)
Das sind tief im System verankerte Fähigkeiten, die du jederzeit nutzen kannst.

- **`/schedule [Aufgabe] [Zeitpunkt]`**  
  **Wofür?** Für Automatisierungen und wiederkehrende Aufgaben (Cronjobs).  
  **Beispiel:** `/schedule Jeden Nachmittag um 16:00 Uhr den Marktüberblick erstellen`  
  **Was passiert?** Ich richte einen Hintergrund-Prozess ein und wache vollautomatisch zum gewünschten Zeitpunkt auf, um die Aufgabe auszuführen.

- **`/capture`**  
  **Wofür?** Um schnell eine Idee, einen Gedanken oder eine Notiz festzuhalten.  
  **Was passiert?** Ich nehme den Input auf und lege ihn geordnet im `00_Inbox`-Ordner ab, damit er nicht verloren geht.

- **`/review`**  
  **Wofür?** Für deinen wöchentlichen Rückblick (Sonntag/Montag).  
  **Was passiert?** Ich bereite eine Zusammenfassung der Woche vor, gehe offene Aufgaben durch und helfe dir, die nächste Woche zu planen.

- **`/goal [Komplexes Ziel]`**  
  **Wofür?** Für extrem große Recherche- oder Programmieraufgaben, bei denen ich stundenlang unbeaufsichtigt arbeiten soll (z.B. über Nacht).  
  **Was passiert?** Ich gehe in einen "Deep Focus"-Modus, arbeite völlig autark, mache Fehlerbehebungen selbstständig und höre erst auf, wenn das Ziel zu 100 % erreicht ist.

- **`/grill-me [Thema]`**  
  **Wofür?** Wenn du unentschlossen bist und von mir interviewt werden möchtest.  
  **Was passiert?** Ich stelle dir gezielte Gegenfragen, spiele "Advocatus Diaboli" und zwinge dich, deine Strategie oder Idee zu präzisieren, bevor wir sie umsetzen.

- **`/create-skill`**  
  **Wofür?** Um erfolgreiche Chat-Workflows dauerhaft abzuspeichern.  
  **Was passiert?** Ich greife auf den `workflow-skill-creator` zu und übersetze unsere letzten analytischen Schritte vollautomatisch in ein neues KI-Plugin, das mir in Zukunft immer zur Verfügung steht.

---

*Tipp: Wenn du neue Routine-Workflows hast, die du oft nutzt, können wir jederzeit neue eigene Befehle (wie den `/shutdown`) programmieren!*
