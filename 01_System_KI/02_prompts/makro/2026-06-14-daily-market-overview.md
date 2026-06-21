# Daily Market Overview: Der tägliche Markt-Kompass

**Zweck:** Instruiert die KI, einen tagesaktuellen, umfassenden Marktüberblick über die wichtigsten Indizes, das Marktsentiment, Sektoren und die wichtigsten Nachrichten des Tages zu erstellen.
**Anwendung:** Schreibe einfach `/Daily` oder führe diesen Prompt am Ende eines Handelstages aus, um einen schnellen Überblick zu bekommen, wo die Börse hindreht.

---

**Prompt:**

Erstelle mir einen detaillierten Marktüberblick über die heutige Marktsituation. Die Analyse soll folgende Elemente enthalten:

1. **Indizes & Rohstoffe (Performance):** Zeige in einer Tabelle die Schlusskurse, Tagesveränderung (%), Wochenveränderung (%), Monatsveränderung (%) und Jahresveränderung (YTD in %) von S&P 500, Nasdaq 100, Dow Jones, Russell 2000, DAX sowie Gold und Öl (WTI/Brent).
2. **Top 10 & Flop 10 Aktien:** Erstelle zwei Tabellen unter den Indizes: Eine für die 10 besten Aktientitel des Tages (S&P 500 & Nasdaq 100 gemischt) und eine für die 10 schlechtesten Aktientitel. Füge bei den Gewinnern zwingend einen grünen Punkt (🟢) und bei den Verlierern einen roten Punkt (🔴) direkt vor dem Ticker in die Tabelle ein. Inkludiere den aktuellen Wert, Tagesveränderung (%), Wochenveränderung (%), Monatsveränderung (%) und Jahresveränderung (YTD in %). Achte zwingend auf eine leere Zeile VOR jeder Tabelle, damit Markdown sie korrekt rendert.
3. **Marktstimmung (Sentiment) & Währungen/Krypto:** Erstelle eine umfassende Tabelle mit den Werten für CNN Fear & Greed Index, VIX (Volatilitätsindex), Put/Call Ratio, US-Zinsen (10-jährige Staatsanleihen), EUR/USD (Euro) und Bitcoin. Zeige für alle Werte den aktuellen Stand sowie die prozentuale (oder absolute) Veränderung für Tag, Woche, Monat und Jahr (YTD).
4. **Sektor-Rotation:** Erstelle eine umfassende Tabelle, die alle 11 GICS-Sektoren des S&P 500 beinhaltet. Die Tabelle soll Spalten für die Tagesveränderung (%), Wochenveränderung (%), Monatsveränderung (%) und Jahresveränderung (YTD in %) haben. Sortiere die Tabelle absteigend nach der Tagesveränderung (stärkster Sektor oben).
5. **Wichtigste Nachrichten:** Fasse die 2-3 wichtigsten ökonomischen oder geopolitischen News zusammen, die den Markt heute bewegt haben.
6. **Fazit:** Analysiere die tägliche Marktlage abschließend in 2-3 prägnanten Sätzen. Wo dreht die Börse hin?

*Wichtig: Nutze ZWINGEND das Tool `search_web`, um die realen Livedaten aus dem Internet abzufragen. Denke dir NIEMALS eigene oder fiktive Kurse aus! Jede Zahl muss real sein. Wenn du Daten (z.B. bestimmte Sektoren oder Top-Performer) nicht direkt findest, musst du weitersuchen oder den Wert als `N/A` markieren. Keine Platzhalter! Speichere das Ergebnis automatisch im Ordner `f:\06. KI\03_Trading_und_Boerse\01_Marktueberblick\market-updates\` ab und verlinke es mir.*
