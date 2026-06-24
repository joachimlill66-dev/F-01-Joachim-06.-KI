# Portfolio-Übersicht & Dashboard

> Diese Datei ist das zentrale Live-Dashboard für alle aktiven Positionen. Sie wird beim Aufruf des Befehls `/portfolio` automatisch von der KI mit Live-Daten aktualisiert.

---

## 🔗 Schnellzugriff (Trading-Zentrale)
- 🔭 **Watchliste:** [[30-Top-Langfrist-Watchlist]] *(Alle Lauer-Aktien und Fallende Messer)*
- ⏳ **Offene Orders:** Siehe Ordner `07_Pending Orders`
- 📜 **Historie & Logs:** [[Portfolio-Historie]]

---

## 1. Langfrist-Portfolio (Core)

| Aktie / Ticker | Anzahl | Kaufkurs | Aktueller Kurs | Exposure (USD) | Gewinn/Verlust | Notizen |
| --- | --- | --- | --- | --- | --- | --- |
| Alphabet (GOOGL) | 15 | 347,07 $ | 349,04 $ | 5.235,60 $ | +29,55 $ | Stop: 339,74 $ |
| Amazon (AMZN) | 10 | 242,20 $ | 238,69 $ | 2.386,90 $ | -35,10 $ | Stop: 230,09 $ |
| ASML (ASML) | 5 | 1.797,00 $ | 1.746,61 $ | 8.733,05 $ | -251,95 $ | Stop: 1.707,15 $ |
| Broadcom (AVGO) | 10 | 377,10 $ | 378,94 $ | 3.789,40 $ | +18,40 $ | Stop: 360,89 $ |
| Nvidia (NVDA) | 20 | 201,55 $ | 200,90 $ | 4.018,00 $ | -13,00 $ | Stop: 191,47 $ |
| **GESAMTSUMME** | | | | **24.162,95 $**| **-252,10 $** | |

### Schlüsselmetriken (Langfrist)
| Metrik | Aktueller Wert | Notizen |
| ------ | -------------- | ------- |
| Portfolio-Gesamtwert | 19.614,34 € | Aktienwert (21.132,54 €) + Cash |
| Potenzieller Gewinn | -220,48 € | PnL in USD (-252,10 $) umgerechnet (Rate: ~1.143) |
| Cash-Bestand | -1.518,20 € | Negativ durch Aktienkäufe (Nachschuss erf.) |

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
| GOOGL (Long) | 347,89 $ | 348,13 $ | 392,45 $ | 100 Stk. Möglicherweise ausgestoppt (Kurs 368,03 $, vorheriger Drop auf 345 $) |

---

## ℹ️ Bedienung für den Assistenten
Wann immer der Nutzer im Chat den Befehl `/portfolio` eingibt ODER eine neue CSV-Datei für das Portfolio bereitstellt, MUSS folgendes passieren:
1. Diese Datei (`Portfolio-Übersicht.md`) mittels der Funktion `search_web` aktualisieren (Aktuelle Kurse abfragen, Gesamtwert neu berechnen). Dabei **MUSS** zwingend explizit nach "Yahoo Finance [Ticker] price" (in USD) gesucht werden, um ADR-Fehler auszuschließen!
2. Ein Snapshot dieses Zustands im Unterordner `Snapshots/` ablegen.
3. ZWINGEND die Datei `Portfolio-Historie.md` öffnen und eine neue Zeile mit den aggregierten Metriken (Gesamtwert, Cash, PnL) anhängen!
4. WICHTIG: Wenn ein Screenshot bereitgestellt wird, MÜSSEN alle Daten (Gesamtwert, PnL, Kurse) exakt abgelesen werden. Addiere niemals blind das Exposure neuer Aktien zum Portfolio-Wert!
