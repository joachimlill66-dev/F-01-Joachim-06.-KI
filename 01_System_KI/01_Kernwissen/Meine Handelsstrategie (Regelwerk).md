# 📈 Meine Handelsstrategie (Regelwerk)(Das "Wie" und "Wann")

> *"Fundierte Anlageentscheidungen statt Bauchgefühl."* – Dieses Dokument definiert die harten, emotionslosen Regeln für alle Käufe, Verkäufe und die Portfoliosteuerung.
> Diese Datei ist dein hartes **Gesetzbuch** für den direkten Handel an der Börse.

- **Inhalt:** Hier stehen die eisernen Regeln für deine echten Trades. Wann genau kaufst du eine Aktie? Wie wird die Positionsgröße mathematisch korrekt berechnet? Wo liegt der Stop-Loss? Wie gehen wir mit Earnings um?
- **Zweck:** Das ist deine "Checkliste", bevor du in deinem Broker auf den Kauf-Button drückst, um emotionale Fehler zu vermeiden.

**Kurz gesagt:** Die **`Strategie`** sagt uns, dass wir ein solides Haus bauen wollen und welche Werkzeuge wir nutzen. Das **`Regelwerk`** ist der exakte Bauplan, der dir vorschreibt, wie viele Zentimeter jeder Ziegelstein dick sein muss, damit das Haus nicht einstürzt.
---

## 1. Anlage-Universum & Konten-Trennung

**Fokus:** Ausschließliches Trading von ausgewählten Einzelaktien (aktueller Tech-Fokus: NVDA, TSLA, GOOGL, AVGO). Keine ETFs oder breiten Indexfonds in diesem Strategie-Ansatz.

**Die eiserne Konten-Trennung:**
- **Langfrist-Depot (Core):** Übergeordneter Trendhandel. Entscheidungen werden **ausschließlich "End of Day" (EOD)** nach 22:00 Uhr getroffen. Keine Reaktionen auf Intraday-Lärm!
- **Prop-Trading (Ufunded / Setup C):** Kurzfristiger Handel. Hier ist aktives Tagesgeschäft mit engen Stops erlaubt und gewollt.

**Auswahlkriterien für neue Einzelaktien:**
- Klare Marktführerschaft oder tiefer "Burggraben" (Moat).
- Starkes Gewinnwachstum kombiniert mit vertretbarer Bewertung (GARP - Growth at a Reasonable Price).
- Intakter übergeordneter Aufwärtstrend in der jeweiligen Branche.

---

## 2. Positionsgrößen & Risikomanagement

**Regel 1: Maximales Risiko pro Trade (Die 1-2% Regel / AKJ-Vorgabe)**
- Für das Langfristdepot: Bei einem Einzel-Trade darf niemals mehr als 1% bis maximal 2% des *Gesamtkapitals* verloren gehen.
- **Speziell für Ufunded (Jens Rabe AKJ-Regel):** Risiko wird anhand des *Drawdowns* berechnet! In normalen Marktphasen: 0,5% bis 1% Risiko vom *maximal akzeptierten Drawdown* des Ufunded-Gesamtdepots. In starken Bullenmärkten: 1,0% bis 2,0% vom max. Drawdown.
- *Beispiel Ufunded:* Bei 5.000 € Max-Drawdown liegt das Risiko pro Trade bei 25 € bis 50 € (normal) bzw. 50 € bis 100 € (starker Markt). 

**Regel 2: Positionsgröße (Sizing) mathematisch korrekt**
- Die Positionsgröße wird **immer rückwärts aus dem Stop-Loss und dem 1-2% Risiko-Limit berechnet!** 
- *WICHTIG für Langfrist-Trades:* Um der "Dauer-Falle" zu entgehen, müssen Stop-Losses auf Tagesbasis signifikanten Abstand haben (z.B. 10-15% unter das letzte Tief oder den EMA 50). Das bedeutet mathematisch zwingend, dass die Positionsgröße **deutlich kleiner** ausfallen muss, um das 1% Risiko-Limit einzuhalten!
- *Beispiel:* Wenn der Stop-Loss 15% unter dem Kaufkurs liegt und du 1% des Gesamtkapitals riskieren willst, darf die Positionsgröße maximal 6,6% des Depots betragen. Ein pauschaler großer Depotanteil ist verboten!
- Es wird nie "All-In" in eine Position gegangen. Tranchen-Käufe (z.B. erst 50% der Zielgröße kaufen, bei Bestätigung weitere 50%) sind bevorzugt.

---

## 3. Entry-Regeln (Der Kauf)

Ein Kauf darf **nur** erfolgen, wenn mindestens einer der folgenden Setups vorliegt und das *Trade-Journal* vorher ausgefüllt wurde!

**Zwingender Timeframe für Setup A & B:** Ausschließlich Tageschart (Daily) oder Wochenchart (Weekly). Intraday-Ausbrüche oder 15-Minuten-Trends werden für diese Setups rigoros ignoriert. Keine Käufe tagsüber aus der Emotion heraus.

**Setup A: Buy the Dip (Pullback an den Support)**
- Die Aktie befindet sich übergeordnet in einem intakten Aufwärtstrend.
- Sie korrigiert kurzfristig und testet eine signifikante Unterstützungszone (Support-Level, starker Gleitender Durchschnitt wie EMA 50 oder EMA 200).
- Es bildet sich ein klares Umkehrsignal (z.B. Hammer-Kerze, **grüner Tagesschluss** nach tiefem Intraday-Drop). *Wir fangen niemals fallende Messer ohne Bestätigung (Daily Close)!*

**Setup B: Der Ausbruch (Breakout)**
- Die Aktie konsolidiert über längere Zeit (Seitwärtsphase) und bricht mit hohem Handelsvolumen über einen starken Widerstand aus.
- *Regel:* Keine Ausbrüche jagen, wenn die Aktie bereits massiv überkauft ist (RSI > 75).

**Setup C: "Aktien Kann Jeder" (Jens Rabe) – Der Ufunded-Standard**
*Das primäre, mechanische Setup für Trendfolge und Ufunded-Konten.*
- **Indikatoren (Zwingend!):** Bollinger Bänder (BB) auf Einstellung 10/1. Williams %R auf Länge 4.
- **Trend-Bestätigung (LONG):** Kurs schließt im *Wochenchart* UND im *Tageschart* jeweils 2x in Folge über dem oberen Bollinger Band.
- **Trigger:** Der Williams %R fällt auf **-80% oder tiefer** UND es bildet sich ein "Downday" (Abwärtskerze).
- **Entry (Kauf):** Kauf-Stop-Order (Stop Buy) exakt 2 Ticks über dem Hoch des Downdays platzieren. Entsteht ein neuer Downday, wird die Order auf die neue Kerze nach unten nachgezogen.
- **Stop-Loss:** Strikt unter das Tief des Downdays.
- *(Für SHORT-Setups spiegelverkehrt: Trend unter unterem BB, Williams %R > -20%, Upday-Trigger, Sell-Stop unter dem Tief).*

---

## 4. Exit-Regeln (Verkauf & Gewinnsicherung)

### Notbremse (Stop-Loss)
- Jeder Trade hat einen vorher definierten Stop-Loss.
- **Systematik:** Kombination aus "Hartem Stop" (Disaster Protection direkt im Broker) und "Mentalem Stop" (Tagesschluss unterbricht den langfristigen Trend).
- **Die EOD-Regel (Langfrist-Portfolio):** Stops im Langfrist-Bereich werden *weit* gesetzt (ATR-basiert oder unter dem EMA 50). Ausstiege erfolgen **niemals intraday aus Panik**, sondern erst, wenn der Tageschart nach 22:00 Uhr signifikant unter dem Stop schließt.
- **Eiserne Regel:** Ein Stop-Loss wird *niemals* nach unten verschoben, wenn die Position im Minus ist!

### Gewinne mitnehmen (Take-Profit & Trailing Stop)
- Bei regulären Langfrist-Trades (Setup A/B): Bei +20% Gewinn wird geprüft, ob ein Teilverkauf (z.B. 1/3 der Position) sinnvoll ist ("Free Ride").
- **Exklusive AKJ-Regel (Setup C / Ufunded):** 
  - *Ziel 1 (CRV 1:1):* Sobald der Trade ein Chance-Risiko-Verhältnis von 1:1 erreicht (Risiko wurde verdient), werden **sofort 50% der Position geschlossen**.
  - *Absicherung:* Der Stop-Loss für die restlichen 50% wird umgehend auf den Einstandskurs (Break Even) gezogen.
  - *Trendlauf:* Die restlichen 50% laufen im Trend. Der Stop wird präzise am **unteren Bollinger Band (bei LONG-Trades)** oder ersatzweise am SMA 10 (Mitte) nachgezogen – niemals willkürlich!
- **Fundamentaler Exit:** Verkauf erfolgt sofort, wenn sich die ursprüngliche These als falsch herausstellt.

### Sonderregel: Earnings (Quartalszahlen)
*Tech-Aktien reagieren auf Quartalszahlen extrem volatil (Gaps). Das Risiko ist für kurzfristige Trader unkalkulierbar.*
- **Vor neuen Trades:** Kein Neuerwerb (Entry) in eine Aktie, wenn deren Quartalszahlen innerhalb der nächsten 3 Handelstage anstehen.
- **Bestehende Positionen (Setup C / Ufunded):** Wenn die Quartalszahlen anstehen und die Position weniger als 5% im Plus ist, wird die Position vor den Zahlen zwingend geschlossen oder extrem eng abgesichert. Ein harter Stop-Loss schützt nicht vor "Earnings-Gaps" (Overnight-Sprüngen). 

---

## 5. Das psychologische Check-up

Bevor auf "Kaufen" oder "Verkaufen" geklickt wird, stelle ich mir ab sofort **vier** Fragen:
1. *Mache ich das gerade aus FOMO (Fear of Missing Out) oder Panik während des Handelstages?*
2. *Ist es nach 22:00 Uhr (EOD-Regel) oder lasse ich mich von Intraday-Noise leiten?*
3. *Habe ich das Trade-Journal für diese Position ausgefüllt und die Stop-Größe mathematisch berechnet?*
4. *Bin ich bereit, den vorher definierten Verlust am Stop-Loss ohne Emotionen zu akzeptieren?*

Wenn eine der Antworten negativ ausfällt: **Maus weglegen. Bis zum nächsten Tagesschluss warten.**
