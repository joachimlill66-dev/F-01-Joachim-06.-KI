# 🏢 Analysebericht: Ufunded (Prop Trading Firm)

> **Zusammenfassung:** Ufunded ist eine in Dubai ansässige "Proprietary Trading Firm" (Prop Firm), die sich durch ein **Instant Funding-Modell** (Sofortfinanzierung ohne Evaluierungsphase) von traditionellen Anbietern abhebt. Händler handeln in einer simulierten Umgebung und erhalten eine Gewinnbeteiligung.

---

## 1. Das Kern-Geschäftsmodell

Der größte Unterschied zu etablierten Marktführern (wie z.B. FTMO) ist der Verzicht auf sogenannte "Challenges".
- **Keine Evaluierungsphase (Challenge):** Bei traditionellen Prop Firms muss man sein Können wochenlang in Demo-Phasen beweisen. Ufunded gewährt sofortigen Zugang zu einem gefundeten Account, sobald die Aufnahmegebühr bezahlt wurde.
- **Simuliertes Umfeld (B-Book):** Sehr wichtig zu verstehen: Trader handeln nicht direkt mit echtem Geld an den Live-Märkten. Das Kapital ist virtuell, und Trades werden in einer simulierten Umgebung ausgeführt. Gewinne werden aus den Gebühren anderer Trader oder durch internes Risikomanagement (Copy Trading von erfolgreichen Tradern) der Firma ausgezahlt.
- **Invite-Only:** Ufunded positioniert sich oft als exklusiver "Invite-only"-Club. Das dient einerseits dem Marketing (Verknappung) und andererseits dem Aufbau eines geschützten Ökosystems.

---

## 2. Angebotene Rahmenbedingungen

- **Kontogrößen & Skalierung:** Die Konten starten in der Regel bei ca. 45.000 $ und gehen bis 360.000 $. Trader, die konstant profitabel sind, können ihr verwaltetes (virtuelles) Kapital nach einem Skalierungsplan auf über 1 Million $ anheben lassen.
- **Profit Split (Gewinnbeteiligung):** Der Trader behält in der Regel zwischen **70% und 90%** seiner erwirtschafteten virtuellen Gewinne, die dann als echte Auszahlung fließen.
- **Handelsplattform:** Anstelle von MetaTrader 4/5 bietet Ufunded eine eigene, hochmoderne Web-Plattform an. Diese basiert stark auf TradingView-Charts und bietet integrierte Tools für Performance-Tracking und Trading-Journals.

---

## 3. Kosten und Risiken

Das Modell der Sofortfinanzierung hat seinen Preis:
- **Höhere Upfront-Kosten:** Da Ufunded das Risiko der Challenge herausnimmt, sind die Startgebühren für die Accounts deutlich höher als die Challenge-Gebühren bei vergleichbaren Konkurrenten. Man kauft sich das Risiko praktisch frei.
- **Keine strenge Regulierung:** Wie die meisten Prop Firms ist Ufunded kein Broker und daher **nicht durch Finanzbehörden (wie SEC, BaFin etc.) streng reguliert**. Wenn die Firma insolvent geht, ist die Startgebühr meist verloren.
- **Affiliate-Marketing:** Ufunded wächst massiv durch Affiliate-Partnerschaften. Das führt dazu, dass es extrem viele (überschwänglich positive) 5-Sterne-Bewertungen auf Plattformen wie Trustpilot gibt. Unabhängige Finanzblogger betrachten diese Dichte an Lob oft kritisch, da viele Reviewer an den Provisionen mitverdienen.
- **Auszahlungsregeln (Drawdown):** Auch beim Instant-Funding gibt es extrem strenge Risikoregeln (Tagesverlustlimit / maximaler Drawdown). Wenn man diese Limits überschreitet, verliert man das Konto sofort, unabhängig von den bis dahin gezahlten Gebühren.

---

## 4. Fazit & Einschätzung

Ufunded ist für Händler interessant, die bereits eine statistisch erwiesene, profitable Strategie besitzen, aber den nervlichen Stress einer mehrstufigen FTMO-Challenge umgehen wollen. Die eigene Plattform gilt als sehr gut. 

**Vorsicht ist geboten bei:**
- Dem Glauben, dass man sofort echtes Geld handelt. Es bleibt ein simuliertes Geschäft.
- Der fehlenden staatlichen Regulierung.
- Den hohen Einstiegskosten. Wer noch keine funktionierende Strategie hat, verbrennt hier sein eigenes Geld sehr schnell, nur in Form von "Kaufgebühren" für das Konto.

_Datum der Recherche: 2026-06-20_

---

## 5. Erstes Trading-Journal (Kontoauszug vom 22.06.2026)

Basierend auf dem offiziellen "Single-Currency account statement" (Zeitraum: 11. Mai 2026 – 22. Juni 2026) ergibt sich folgendes Bild für den ersten Live-Handel auf der Ufunded-Plattform:

### 📈 Performance-Metriken
* **Startkapital:** 180.000,00 $
* **Aktueller Kontostand (Balance):** 183.283,32 $
* **Aktuelle Equity (inkl. offenen Positionen):** 183.016,96 $
* **Realisierter Gewinn (Settled PnL):** **+3.496,37 $** (Ein solider erster Meilenstein!)
* **Aktueller Drawdown (Floating PnL):** -266,36 $

### 🔍 Trade-Analyse & Regel-Audit
In den Unterlagen ist eine sehr hohe Trading-Frequenz ersichtlich (teils viele Trades an einem Tag, z.B. am 18.06.). Besonders kritisch sind jedoch die aktuell noch **offenen Positionen** in Bezug auf unser Regelwerk (Setup C):

1. **Broadcom (AVGO) - Short Position:**
   * **Größe:** 87 Stück | **Kaufkurs:** 409,12 $ | **Aktueller Kurs:** 412,00 $
   * **Floating PnL:** -250,50 $
   * **Take Profit:** 405,34 $
   * 🚨 **KRITISCHER REGELVERSTOSS:** Es ist kein Stop-Loss hinterlegt! Das widerspricht der elementaren Regel der "Disaster Protection".
   
2. **Apple (AAPL) - Long Position:**
   * **Größe:** 1 Stück | **Kaufkurs:** 314,35 $ | **Aktueller Kurs:** 298,49 $
   * **Floating PnL:** -15,86 $
   * **Stop-Loss:** 292,09 $ (Risiko = 22,26 $)
   * **Take Profit:** 319,19 $ (Potenzieller Gewinn = 4,84 $)
   * ⚠️ **WARNUNG:** Das Chance-Risiko-Verhältnis (CRV) liegt bei ca. 1:4 (wir riskieren 22 $, um 4 $ zu gewinnen). Dies widerspricht der "1:1 Risiko-verdient"-Regel für Setup C.

**Fazit des ersten Sprints:**
Das Konto ist profitabel gestartet, was sehr erfreulich ist! Allerdings deuten die jüngsten offenen Trades auf eine beginnende Inkonsequenz bei der Ausführung des Setup C (Stop-Loss vergessen, schlechtes CRV). Hier muss die mechanische Disziplin sofort wieder geschärft werden.
