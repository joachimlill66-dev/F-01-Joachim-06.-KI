# 🕒 Aktive KI-Cronjobs (Zeitpläne)

*Dieses Dokument listet alle aktuell laufenden, automatisierten Hintergrund-Tasks (Cronjobs) der KI auf. Da diese Jobs direkt im "Gehirn" der KI laufen, dient diese Datei als dein **Übersichts-Logbuch**.*

---

## 🟢 Aktuell aktive Cronjobs

### 1. Tägliches Markt-Briefing (16:00 Uhr)
- **Zeitplan (Cron):** `0 16 * * *` (Jeden Tag um 16:00 Uhr)
- **Status:** Aktiv
- **Anweisung an die KI:** 
  > *"Es ist 16:00 Uhr! Erstelle jetzt unaufgefordert den ausführlichen Markt-Kompass exakt nach der Vorlage `f:\06. KI\01_System_KI\03_scripts\01_Vorlagendateien\marktueberblick-vorlage.md` sowie das kurze tägliche Briefing nach `f:\06. KI\01_System_KI\03_scripts\01_Vorlagendateien\market-update-vorlage.md`. Speichere den großen Kompass zwingend unter dem Namen `YYYY-MM-DD-marktueberblick.md` in `f:\06. KI\03_Trading_und_Boerse\01_Marktueberblick\market-updates\` und das kurze Update in `f:\06. KI\03_Trading_und_Boerse\01_Marktueberblick\Daily Market Update\`. Nutze dazu aktuelle Livedaten."*

### 2. Morning Briefing (08:00 Uhr)
- **Zeitplan (Cron):** `0 8 * * *` (Jeden Tag um 08:00 Uhr)
- **Status:** Aktiv
- **Anweisung an die KI:** 
  > *"Überprüfe die asiatischen Märkte sowie globale News und schreibe mir eine kurze Zusammenfassung als Start in den Tag. Speichere das Ergebnis im Ordner `01_Marktueberblick/Morning Briefing/`."*

### 3. Earnings-Watcher (09:00 Uhr)
- **Zeitplan (Cron):** `0 9 * * *` (Jeden Tag um 09:00 Uhr)
- **Status:** Aktiv
- **Anweisung an die KI:** 
  > *"Überprüfe, ob in den nächsten 7 Tagen Quartalszahlen für Alphabet, Nvidia, Tesla oder Broadcom anstehen. Nutze dafür zwingend die Vorlage `f:\06. KI\01_System_KI\03_scripts\01_Vorlagendateien\earnings-vorlage.md` und speichere den Bericht in `03_Trading_und_Boerse/09_Einzelaktien_ProRealTime/Earnings/`."*

### 4. Weekly Portfolio Review (Sonntag 10:00 Uhr)
- **Zeitplan (Cron):** `0 10 * * 0` (Jeden Sonntag um 10:00 Uhr)
- **Status:** Aktiv
- **Anweisung an die KI:** 
  > *"Analysiere die Performance der 4 ProRealTime-Aktien der letzten Woche. Nutze zwingend die Vorlage `f:\06. KI\01_System_KI\03_scripts\01_Vorlagendateien\Weekly Review Vorlage.md` und speichere die Zusammenfassung in `03_Trading_und_Boerse/09_Einzelaktien_ProRealTime/Weekly Reviews/`."*

### 5. Automatisiertes Inhaltsverzeichnis (02:00 Uhr)
- **Zeitplan (Cron):** `0 2 * * *` (Jeden Tag um 02:00 Uhr)
- **Status:** Aktiv
- **Anweisung an die KI:** 
  > *"Führe das Skript `f:\06. KI\01_System_KI\03_scripts\update-inhaltsverzeichnis.ps1` aus, um das Vault-Inhaltsverzeichnis automatisch zu aktualisieren."*

### 6. Monthly Watchlist Review (Am 21. jedes Monats)
- **Zeitplan (Cron):** `0 17 21 * *` (Am 21. jedes Monats um 17:00 Uhr)
- **Status:** Aktiv
- **Anweisung an die KI:** 
  > *"Es ist Zeit für das monatliche Watchlist-Review! Erinnere den Nutzer aktiv daran, die 'Fallenden Messer' und Lauer-Aktien (wie ISRG) unserer Top-30-Watchlist zu überprüfen. Bitte ihn, frische Screenshots von den Wackelkandidaten hochzuladen, um zu schauen, ob sie ihren Abwärtstrend gebrochen haben."*

---

## 💡 Wie verwalte ich meine Cronjobs?

Da diese Prozesse tief im System verankert sind, brauchst du keine Programmierkenntnisse, um sie zu steuern. Nutze einfach den Chat!

**Befehle für den Chat:**
- **Neuen Cronjob anlegen:** Gib `/schedule` in den Chat ein und schreibe dazu, wann und was ich tun soll (z.B. *"Jeden Freitag um 18:00 Uhr das Portfolio auswerten"*).
- **Status abfragen:** Frag mich *"Welche Cronjobs laufen gerade?"*
- **Cronjob löschen:** Sag mir einfach *"Stoppe den 16-Uhr-Markt-Cronjob"* oder *"Lösche alle laufenden Hintergrund-Tasks"*. Ich kümmere mich dann darum.
