# Portfolio-Übersicht & Dashboard

> Diese Datei ist das zentrale Live-Dashboard für alle aktiven Positionen. Sie wird beim Aufruf des Befehls `/portfolio` automatisch von der KI mit Live-Daten aktualisiert.

---

## 🔗 Schnellzugriff (Trading-Zentrale)
- 🔭 **Watchliste:** [[30-Top-Langfrist-Watchlist]] *(Alle Lauer-Aktien und Fallende Messer)*
- ⏳ **Offene Orders:** Siehe Ordner `07_Pending Orders`
- 📜 **Historie & Logs:** [[Portfolio-Historie]]

---

## 1. Langfrist-Portfolio (Core)

| Aktie / Ticker   | Anzahl | Kaufkurs | Aktueller Kurs | Gewinn/Verlust | Notizen |
| ---------------- | ------ | -------- | -------------- | -------------- | ------- |
| Alphabet (GOOGL) | 10     | 355,30 $ | 367,46 $       | +121,60 $      |         |
| Amazon (AMZN)    | 10     | 242,20 $ | 244,39 $       | +21,90 $       |         |
| Broadcom (AVGO)  | 10     | 373,25 $ | 411,35 $       | +381,00 $      |         |
| Nvidia (NVDA)    | 20     | 199,10 $ | 210,69 $       | +231,80 $      |         |
| Tesla (TSLA)     | 10     | 381,65 $ | 400,49 $       | +188,40 $      |         |

### Schlüsselmetriken (Langfrist)
| Metrik | Aktueller Wert | Notizen |
| ------ | -------------- | ------- |
| Portfolio-Gesamtwert | 20.888,21 € | Inklusive Cash-Bestand |
| Potenzieller Gewinn | +823,84 € | (Wechselkurs EUR/USD 1,1467) |
| Cash-Bestand | 4.797,95 € | Verfügbare Margin: 16.614,77 € |

---

## 2. Prop-Trading Account (Ufunded / Setup C)

*Dieses Konto wird rein mechanisch nach dem AKJ-Regelwerk gehandelt.*

| Metrik | Aktueller Wert | Limit / Ziel |
| ------ | -------------- | ------------ |
| Kontostand | *N/A* | *Ziel-Gewinn eintragen* |
| Verfügbarer Max-Drawdown | *N/A* | *Verlust-Limit eintragen* |
| Aktuelles Risiko pro Trade | *N/A* | (max. 1-2% vom Drawdown) |

**Aktive Setup C Trades:**
| Ticker | Kaufkurs | Stop-Loss | Ziel 1 (50% Take Profit) | Status / Notizen |
| ------ | -------- | --------- | ------------------------ | ---------------- |
| *leer* |          |           |                          |                  |

---

## ℹ️ Bedienung für den Assistenten
Wann immer der Nutzer im Chat den Befehl `/portfolio` eingibt, MUSS diese Datei mittels der Funktion `search_web` aktualisiert werden (Aktuelle Kurse abfragen, Gesamtwert neu berechnen). Ein Snapshot dieses Zustands wird im Unterordner `Snapshots/` abgelegt.
