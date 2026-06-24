---
cssclasses:
  - dashboard
---
# 📊 Earnings Übersicht (MOC)

Willkommen im Earnings-Hub! Hier verwalten wir alle Quartalszahlen und Berichte zu den Unternehmen in deinem Portfolio.

Anstatt für jede Aktie und jedes Jahr tiefe und unübersichtliche Ordnerstrukturen anzulegen, nutzen wir die Stärke von Obsidian: **Map of Contents (MOC)** und **Properties (Eigenschaften)**.

## 💡 So funktioniert's:
Wenn du einen neuen Earnings-Bericht erstellst, speicherst du ihn einfach in diesem Ordner (`Earnings`) ab und gibst der Notiz folgende Properties (ganz oben in der Datei):
- `Ticker`: (z.B. NVDA)
- `Quartal`: (z.B. 2026-Q2)
- `Datum`: (z.B. 2026-06-20)
- `Status`: (z.B. Analysiert)

Dank des Plugins Dataview baut sich die folgende Tabelle dann ganz von alleine auf!

---

## 📅 Alle Earnings-Berichte

```dataview
TABLE Quartal, Datum, Status
FROM "03_Trading_und_Boerse/09_Einzelaktien_ProRealTime/Earnings"
WHERE file.name != "00_Earnings_MOC" AND file.name != "Liesmich"
SORT Datum desc
```

---

## 🏢 Direkt zu deinen Aktien
Hier sind die Links zu deinen Portfolio-Aktien, falls du in die allgemeinen Firmen-Analysen schauen möchtest:
- [[AMZN/Analyse_AMZN|AMZN]] - Amazon
- [[GOOGL/Analyse_GOOGL|GOOGL]] - Alphabet
- [[AVGO/Analyse_AVGO|AVGO]] - Broadcom
- [[NVDA/Analyse_NVDA|NVDA]] - Nvidia
- [[Tesla/analyse-2026-06-16|TSLA]] - Tesla

---
**Nächster Schritt:** Möchtest du, dass ich dir eine **Vorlage** (Template) für einen neuen Earnings-Bericht erstelle? Damit hättest du die Properties und eine fertige Struktur für deine Notizen direkt parat!


---
## 🔗 Weitere Dateien zu diesem Ticker
- [[Earnings/00_Earnings_MOC|00_Earnings_MOC]]
- [[Earnings/2026-06-20-earnings-watcher|2026-06-20-earnings-watcher]]
- [[Earnings/2026-06-21-earnings-watch|2026-06-21-earnings-watch]]
- [[Earnings/2026-06-22-earnings-watcher|2026-06-22-earnings-watcher]]
- [[Earnings/2026-06-23-earnings-watcher|2026-06-23-earnings-watcher]]
- [[Earnings/2026-06-24-earnings-watcher|2026-06-24-earnings-watcher]]
