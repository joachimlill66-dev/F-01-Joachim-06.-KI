# Lektion 7: Options-Strategien

Optionen sind nicht zu verwechseln mit Options*scheinen* (die oft von Banken gegen den Anleger konstruiert werden). Echte Optionen sind der professionelle Werkzeugkasten der Wall Street. 

Mit reinen Aktien kannst du nur zwei Dinge tun: Kaufen und hoffen, dass es steigt (Long) oder Leerverkaufen und hoffen, dass es fällt (Short). **Mit Optionen kannst du jede denkbare Marktsituation handeln:** Steigend, fallend, seitwärts, hohe Volatilität oder absolute Langeweile.

## Was ist eine Option?
Eine Option ist ein Vertrag. Er gibt dem Käufer das Recht (aber nicht die Pflicht), 100 Aktien eines Unternehmens zu einem bestimmten Preis (Strike) an einem bestimmten Datum (Verfallstag) zu kaufen (Call) oder zu verkaufen (Put). Der *Verkäufer* (Stillhalter) der Option hat hingegen die Pflicht zu liefern/abzunehmen und kassiert dafür sofort eine Prämie.

## Die bekanntesten Strategien

### 1. Covered Call (Zusatzeinkommen auf Aktien)
- **Die Situation:** Du besitzt 100 Aktien von Apple, die aktuell bei 150$ stehen. Du möchtest sie langfristig behalten, rechnest aber in den nächsten 4 Wochen nicht mit großen Kurssprüngen.
- **Die Strategie:** Du verkaufst einen Call-Option-Vertrag auf deine 100 Aktien für einen Strike-Preis von 160$ in 4 Wochen. Dafür kassierst du z.B. 100$ Prämie direkt bar auf die Hand.
- **Das Ergebnis:** Bleibt Apple unter 160$, behältst du die 100$ Prämie und deine Aktien. Steigt Apple über 160$, musst du deine Aktien für 160$ abgeben (hast also trotzdem satten Gewinn gemacht) plus die Prämie.

### 2. Cash Secured Put (Aktien mit Rabatt einkaufen)
- **Die Situation:** Du möchtest gerne Nvidia-Aktien kaufen, aber aktuell ist sie dir mit 120$ zu teuer. Du wärst bereit, bei 100$ einzusteigen.
- **Die Strategie:** Du verkaufst eine Put-Option mit Strike 100$. Dafür musst du das Geld (10.000$ für 100 Aktien) als Sicherheit (Cash Secured) hinterlegen. Für das Eingehen dieser Verpflichtung zahlt dir der Markt sofort eine Prämie (z.B. 200$).
- **Das Ergebnis:** Fällt Nvidia nicht auf 100$, behältst du einfach deine 200$ Prämie (quasi "Geld für das Warten"). Fällt Nvidia auf 95$, *musst* du die Aktien für 100$ kaufen – was du aber ohnehin wolltest! Durch die 200$ Prämie liegt dein echter Einkaufspreis sogar nur bei 98$.

### 3. Hedging (Das Portfolio versichern)
Wenn du große Sorge vor einem Marktcrash hast, kannst du Put-Optionen auf den S&P 500 (SPY) kaufen. Das kostet dich zwar eine kleine Versicherungsprämie, aber wenn der Markt um 30% einbricht, explodiert der Wert deines Puts und gleicht die Verluste deiner normalen Aktien aus.

### 4. Spreads (Iron Condor, Butterfly)
Profis kombinieren den Kauf und Verkauf verschiedener Optionen. Bei einem "Iron Condor" wettet man beispielsweise einfach nur darauf, dass sich der Aktienkurs in den nächsten 4 Wochen kaum bewegt. Bleibt die Aktie in einem definierten Kanal, gewinnt der Trader.

## Fazit
Optionshandel ermöglicht regelmäßige Einnahmen ("Stillhaltergeschäfte", man ist wie das Casino, das die Prämie kassiert) und exaktes Risikomanagement. Es erfordert jedoch einiges an Einarbeitung und ein margenfähiges Depot (wie Interactive Brokers).
