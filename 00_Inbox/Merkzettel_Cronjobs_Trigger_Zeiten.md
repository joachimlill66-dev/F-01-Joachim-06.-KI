# 💡 Merkzettel: Funktionsweise von Cronjobs & Zeitplänen

> *Erstellt am: 2026-06-21*

**Wichtige Erkenntnis zur Funktionsweise von automatisierten Zeitplänen (Cronjobs):**

Cronjobs (wie das Morning Briefing um 08:00 Uhr oder der Earnings-Watcher um 09:00 Uhr) lösen **immer exakt dann aus, wenn die vorgegebene Uhrzeit erreicht wird.**

Das bedeutet:
- Wenn das System erst **nach** einer geplanten Uhrzeit (z. B. um 09:20 Uhr) gestartet wird, holt das System die verpassten Termine von 08:00 und 09:00 Uhr für diesen Tag **nicht** automatisch rückwirkend nach. 
- Die Cronjobs laufen zwar im Hintergrund aktiv weiter, werden aber erst wieder am **nächsten regulären Termin** (also am folgenden Tag um 08:00 und 09:00 Uhr) auslösen.

*Tipp für die Zukunft:* 
Sollte das System einmal später am Tag gestartet werden, müssen die verpassten morgendlichen Reports (falls sie am selben Tag noch benötigt werden) entweder durch einen manuellen Prompt im Chat angefragt werden, oder sie entfallen für diesen Tag. Ab dem Folgetag läuft alles wieder vollautomatisch nach Plan.

Da hast du völlig recht, entschuldige die Verwirrung! Das liegt an einer kleinen technischen Eigenheit von Zeitplänen (Cronjobs): Sie lösen immer erst aus, wenn die genaue Uhrzeit _erreicht_ wird. Da wir unser System heute erst nach 09:20 Uhr hochgefahren haben, waren die Termine für 08:00 Uhr und 09:00 Uhr für den heutigen Tag bereits verstrichen. Die Cronjobs laufen jetzt zwar, werden aber regulär erst ab _morgen_ früh um 08:00 und 09:00 Uhr feuern.

Damit du für heute aber nicht leer ausgehst und nicht nachschauen musst, habe ich die Daten kurzerhand manuell gezogen und die beiden Dokumente für heute direkt für dich erstellt:

1. 🌅 **Dein Morning Briefing für heute:** Habe ich dir hier abgelegt: 
    
    ![](vscode-file://vscode-app/c:/Users/joach/AppData/Local/Programs/Antigravity%20IDE/resources/app/extensions/theme-symbols/src/icons/files/markdown.svg)
    
    [2026-06-21-morning-briefing.md] _Zusammenfassung:_ Geopolitik (Iran-Gespräche) und wichtige US-Makrodaten (BIP & PCE nächste Woche) stehen im Fokus. Asien schloss stark, trotz Hongkong-Schwäche.
    
2. 📅 **Dein Earnings-Watcher für heute:** Hier geht's zur Datei: 
    
    ![](vscode-file://vscode-app/c:/Users/joach/AppData/Local/Programs/Antigravity%20IDE/resources/app/extensions/theme-symbols/src/icons/files/markdown.svg)
    
    [2026-06-21-earnings-watch.md] _Zusammenfassung:_ Entwarnung! In den nächsten 7 Tagen stehen keine Quartalszahlen unserer Tech-Titel an. Erst Ende Juli wird es mit Alphabet und Tesla wieder spannend.
    

Ab morgen läuft das Ganze dann völlig lautlos und automatisch im Hintergrund ab, sodass die Dateien pünktlich zum Frühstück schon für dich bereitliegen.

Sollen wir als nächstes auf etwas Bestimmtes schauen, oder lassen wir den Sonntag jetzt entspannt ausklingen?
