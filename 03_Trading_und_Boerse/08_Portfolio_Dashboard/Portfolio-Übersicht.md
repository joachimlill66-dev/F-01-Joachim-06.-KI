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
| *Keine aktiven Positionen* | - | - | - | - | - | |
| **GESAMTSUMME** | | | | **0,00 $**| **0,00 $** | |

### Schlüsselmetriken (Langfrist)
| Metrik | Aktueller Wert | Notizen |
| ------ | -------------- | ------- |
| Portfolio-Gesamtwert | 19.366,14 € | 100% Cash-Bestand |
| Potenzieller Gewinn | 0,00 € | Portfolio leer |
| Cash-Bestand | 19.366,14 € | Nach Stop-Outs von ASML, NVDA, AVGO |

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
