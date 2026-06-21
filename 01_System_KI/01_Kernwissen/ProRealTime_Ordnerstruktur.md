# 🗂️ Verzeichnisstruktur & Datenarchitektur (ProRealTime & Trading)

*Zuletzt aktualisiert am: 21. Juni 2026*

Diese Datei dient der KI als **Core Knowledge (Kernwissen)** über die absolute und feste Ordnerstruktur im Trading-Bereich von Joachim. Zukünftige Dateien, Analysen und Screenshots müssen zwingend nach dieser Logik abgelegt werden.

---

## 📂 Die Hauptstruktur (`f:\06. KI\03_Trading_und_Boerse\`)

Joachim hat die Arbeitsumgebung logisch und chronologisch durchstrukturiert. Dies ist die feste Basis-Architektur:

### `01_Marktueberblick`
*   **Zweck:** Die oberste Ebene für alles, was das "Big Picture" betrifft.
*   **Inhalte:** Daily Market Updates, Morning Briefings, wöchentliche Marktberichte.

### `05.Börse`
*   **Zweck:** Strategien, Regelwerke und Coaching-Materialien.
*   **Inhalte:** Jens Rabe "Aktien Kann Jeder" (AKJ) Strategie-Guides, Ufunded-Auswertungen, allgemeines Börsen-Mindset.

### `06_Watchliste`
*   **Zweck:** Beobachtungslisten für zukünftige Trades.
*   **Inhalte:** Die zentrale "30-Top-Langfrist-Watchlist.md" (Lauer-Aktien und Fallende Messer), Screener-Ergebnisse (z.B. Finviz), CSV-Exporte. Diese Listen werden vom Portfolio-Dashboard aus zentral verlinkt.

### `07_Pending Orders`
*   **Zweck:** Die Wartehalle für Lauer-Orders.
*   **Inhalte:** Screenshots und Übersichten von Kauflimits oder Stop-Buys, die in ProRealTime scharf geschaltet sind, aber noch nicht ausgeführt wurden. 

### `08_Portfolio_Dashboard` (Die Kommandozentrale)
*   **Zweck:** Das zentrale Cockpit für das laufende Depot und Prop-Trading.
*   **Inhalte:** Hier liegt zwingend die `Portfolio-Übersicht.md` (welche beim Befehl `/portfolio` aktualisiert wird), sowie die `Portfolio-Historie.md` (als Logbuch). Unterordner `Snapshots/` speichert Backups der Live-Abfragen. Es gibt hier KEINE Watchlisten-Tabellen, sondern nur Wiki-Links zur `06_Watchliste`.

### `09_Einzelaktien_ProRealTime` (Das Aktien-Archiv)
*   **Zweck:** Die operative Ablage und Historie für Einzelaktien.
*   **Inhalte:** Für jede Aktie (egal ob im Depot oder intensiv analysiert) gibt es hier einen **eigenen Unterordner** (z.B. `AMD`, `CRWD`, `TSM`).
*   *Workflow:* Neue Unternehmensanalysen (z.B. `analyse-2026-06-21.md`) und Chart-Screenshots landen *immer* im jeweiligen Firmenordner auf dieser Ebene. Hier liegen keine Dashboards!

---

## 🤖 KI-Direktive für die Zukunft
*   **Kein Ordner-Wirrwarr:** Lege keine neuen Hauptordner mehr an, es sei denn, Joachim fordert es explizit. Alles passt in die bestehenden Kategorien. Dashboards bleiben im Dashboard-Ordner, Einzelaktien im Archiv.
*   **Fortlaufende Arbeit:** Wir stehen aktuell bei der Abarbeitung der Watchliste. Die Sektoren 1 und 2 (Halbleiter und Cybersecurity) sind fertig abgelegt. In der nächsten Session geht es mit den Sektoren 3, 4, 5 und 6 weiter.
