# Portfolio-Übersicht & Dashboard

> Diese Datei ist das zentrale Live-Dashboard für alle aktiven Positionen. Sie wird beim Aufruf des Befehls `/portfolio` automatisch von der KI mit Live-Daten aktualisiert.

---

## 🔗 Schnellzugriff (Trading-Zentrale)
- 🔭 **Watchliste:** [[30-Top-Langfrist-Watchlist]] *(Alle Lauer-Aktien und Fallende Messer)*
- ⏳ **Offene Orders:** Siehe Ordner `07_Pending Orders`
- 📜 **Historie & Logs:** [[Portfolio-Historie]]

---

## 1. Langfrist-Portfolio (Core)

| Aktie / Ticker   | Anzahl | Kaufkurs | Aktueller Kurs | Exposure (USD) | Gewinn/Verlust | Notizen |
| ---------------- | ------ | -------- | -------------- | -------------- | -------------- | ------- |
| Alphabet (GOOGL) | 15     | 347,07 $ | 345,00 $       | 5.175,00 $     | -31,05 $       | Stop: 339,74 $ |
| Amazon (AMZN)    | 10     | 242,20 $ | 232,00 $       | 2.320,00 $     | -102,00 $      | Stop: 230,09 $ |
| Broadcom (AVGO)  | 10     | 373,25 $ | 411,00 $       | 4.110,00 $     | +377,50 $      | Stop: 385,00 $ |
| Nvidia (NVDA)    | 20     | 199,10 $ | 208,00 $       | 4.160,00 $     | +178,00 $      | Stop: 202,50 $ |
| Palantir (PLTR)  | 20     | 120,20 $ | 119,00 $       | 2.380,00 $     | -24,00 $       | Stop: 114,19 $ |
| Tesla (TSLA)     | 10     | 381,65 $ | 398,00 $       | 3.980,00 $     | +163,50 $      | Stop: 382,45 $ |
| ASML (ASML)      | 5      | 1.797,00 $| 1.793,00 $     | 8.965,00 $     | -20,00 $       | Stop: 1.707,15 $ |
| ARM (ARM)        | 10     | 389,00 $ | 407,00 $       | 4.070,00 $     | +180,00 $      | Stop: 352,80 $ |
| Nike (NKE)       | 100    | 42,41 $  | 43,00 $        | 4.300,00 $     | +59,00 $       | Stop: 40,29 $ |
| **GESAMTSUMME**  |        |          |                | **39.460,00 $**| **+780,95 $**  |         |

### Schlüsselmetriken (Langfrist)
| Metrik | Aktueller Wert | Notizen |
| ------ | -------------- | ------- |
| Portfolio-Gesamtwert | 20.781,33 € | Aktienwert (34.511,11 €) + negativer Cash-Bestand |
| Potenzieller Gewinn | +683,01 € | PnL in USD (780,95 $) umgerechnet (Rate: 1.1434) |
| Cash-Bestand | -13.729,78 € | Negativ durch Aktienkäufe (Nachschuss erf.) |

---

## 2. Prop-Trading Account (Ufunded / Setup C)

*Dieses Konto wird rein mechanisch nach dem AKJ-Regelwerk gehandelt.*

| Metrik | Aktueller Wert | Limit / Ziel |
| ------ | -------------- | ------------ |
| Kontostand (Balance) | 183.686,60 $ | Startkapital: 180.000,00 $ |
| Equity (inkl. Floating) | 183.865,10 $ | |
| Verfügbarer Max-Drawdown | *N/A* | *Verlust-Limit eintragen* |
| Aktuelles Risiko pro Trade | *N/A* | (max. 1-2% vom Drawdown) |

**Aktive Setup C Trades:**
| Ticker | Kaufkurs | Stop-Loss | Ziel 1 (50% Take Profit) | Status / Notizen |
| ------ | -------- | --------- | ------------------------ | ---------------- |
| GOOGL (Long) | 347,89 $ | 348,13 $ | 392,45 $ | 100 Stk. PnL: +178,50 $. (Stop auf Break-Even) |

---

## ℹ️ Bedienung für den Assistenten
Wann immer der Nutzer im Chat den Befehl `/portfolio` eingibt ODER eine neue CSV-Datei für das Portfolio bereitstellt, MUSS folgendes passieren:
1. Diese Datei (`Portfolio-Übersicht.md`) mittels der Funktion `search_web` aktualisieren (Aktuelle Kurse abfragen, Gesamtwert neu berechnen). 
2. Ein Snapshot dieses Zustands im Unterordner `Snapshots/` ablegen.
3. ZWINGEND die Datei `Portfolio-Historie.md` öffnen und eine neue Zeile mit den aggregierten Metriken (Gesamtwert, Cash, PnL) anhängen!
4. WICHTIG: Wenn ein Screenshot bereitgestellt wird, MÜSSEN alle Daten (Gesamtwert, PnL, Kurse) exakt abgelesen werden. Addiere niemals blind das Exposure neuer Aktien zum Portfolio-Wert!
