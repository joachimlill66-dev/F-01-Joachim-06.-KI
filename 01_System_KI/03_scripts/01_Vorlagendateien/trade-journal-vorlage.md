# Trade-Journal: [Ticker-Symbol, z.B. NVDA]

> [!CAUTION]
> **KI-ANWEISUNG:** Fundamentaldaten (GARP-Check) und Support-Level zwingend via `search_web` abfragen! Nutze dazu **strikt Yahoo Finance** (`site:finance.yahoo.com`), um Halluzinationen oder ADR-Verschiebungen auszuschließen.

**Datum:** YYYY-MM-DD
**Richtung:** [Long / Short]
**Aktueller Kurs:** [Wert]
**Geplante Positionsgröße:** [% des Depots / Stückzahl]

---

## 1. Strategie-Check (Warum kaufe ich?)
*Passt dieser Trade zu meiner Strategie? (Markieren)*
- [ ] **Setup A (Pullback):** Die Aktie ist in einem intakten Aufwärtstrend, hat zurückgesetzt und testet gerade einen Support (z.B. EMA 50/200).
- [ ] **Setup B (Breakout):** Die Aktie bricht unter hohem Volumen aus einer Seitwärtsphase über einen starken Widerstand aus (RSI nicht überkauft).
- [ ] **Setup C (AKJ):** Bollinger Band Touch (10/1) und Williams %R unter -80.
- [ ] **Sonstiges:** [Hier eintragen, warum dennoch gekauft wird]

## 2. GARP-Check
- [ ] Umsatz- und Gewinnwachstum sind intakt.
- [ ] Die Bewertung (z.B. KGV) ist historisch oder im Branchenvergleich vertretbar.
- [ ] Das Unternehmen hat einen klaren Burggraben (Marktführerschaft).

## 3. Risikomanagement
- **Harter Stop-Loss (beim Broker):** [Wert eintragen, z.B. 15% unter Kaufkurs]
- **Mentaler Stop-Loss (Tagesabschluss):** [Welche Unterstützung darf auf Tagesschlussbasis nicht brechen?]
- **Maximales Risiko in €:** [Einsatz * %-Verlust bis Stop-Loss. Darf max 1-2% des Gesamtdepots sein!]

## 4. Ziel (Take-Profit)
- **Erstes Kursziel:** [Wo wird das erste Mal über einen Teilverkauf nachgedacht? z.B. nächster Widerstand]
- **Trailing-Strategie:** [Wie wird der Stop-Loss nachgezogen, wenn die Position im Plus ist?]

## 5. Psychologie-Check
- [ ] Fühle ich FOMO (Angst, etwas zu verpassen)?
- [ ] Akzeptiere ich den potenziellen Verlust bis zum Stop-Loss mental komplett?

---
*Fazit: Wenn alle Kriterien erfüllt sind, ist der Trade genehmigt.*

---
**📂 Zielordner für fertige Datei:** `03_Trading_und_Boerse\10_Trading_Journal\01_Pre_Trade_Planung\`

---

## 🤖 Der KI-Trading-Rechner (Prompt)

> **So nutzt du diesen Block:** Kopiere den folgenden Text, fülle die Werte in den eckigen Klammern aus und schicke ihn direkt hier in den Chat an mich. Ich berechne dir dann deine exakte Stückzahl und prüfe das Risiko!

```text
Ich plane einen Trade und möchte, dass du ihn nach meinem Strategieplan prüfst. Hier sind die Daten:

#### Trading-Check: 
Sektor:           [ Sektor eintragen, z.B. Technologie ]
Datum:            [ Heutiges Datum ]
Asset / Ticker:   [ TICKER ]

Geplanter Take-Profit (TP):  [ Preis € / $ ]
Aktueller Preis / Einstieg:  [ Preis € / $ ]
Geplanter Stop-Loss (SL):    [ Preis € / $ ]

Mein Gesamtkapital:          [ z.B. 20.000,00 € ]
Max. Risiko vom Gesamtdepot: [ 1% ]

ATR-Wert (1x):               [ Zahl ] 

Bitte berechne für mich:
1. Die exakte Positionsgröße (Stückzahl) basierend auf meiner 1%-Risikoregel.
2. Das Chance-Risiko-Verhältnis (CRV). Ist es mindestens 2:1?
3. Eine kurze Einschätzung: Ist der Stop-Loss sinnvoll gesetzt oder zu eng/weit für einen Swing-Trade?

Antworte kurz und präzise, damit ich das Ergebnis direkt in mein Trading-Journal kopieren kann.
```
