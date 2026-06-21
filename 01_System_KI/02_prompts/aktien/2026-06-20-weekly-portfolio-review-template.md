# Prompt-Vorlage: Weekly Portfolio Review

**Zweck:** Diese Vorlage wird vom Cronjob jeden Sonntag um 10:00 Uhr genutzt, um das wöchentliche Review für das ProRetailTime-Portfolio zu generieren.

---

**Anweisung an die KI:**
Lade dir die aktuellen Schlusskurse der vergangenen Handelswoche sowie aktuelle technische Indikatoren (RSI, MACD) für alle Werte aus `portfolio-bestand.md` per Websuche herunter. Erstelle dann ein Markdown-Dokument unter `03_Trading_und_Boerse\08_Portfolio-ProRetailTime\Weekly Reviews\` im folgenden Format:

```markdown
# Weekly Portfolio Review: [Startdatum] - [Enddatum]

> **Hintergrund:** Automatisierter wöchentlicher Rückblick auf das ProRetailTime-Portfolio inklusive technischer Indikatoren und Gewichtung.

---

## 1. 📊 Wochenzusammenfassung & Performance

| Aktie | Ticker | Gewichtung | Schlusskurs | Trend der Woche | RSI (14) | MACD | Status |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **[Name]** | [Ticker] | [% des Portfolios] | [$] | [Auf/Ab/Seitwärts] | [Wert] | [Buy/Sell/Neutral] | [Ampel] |
*(Alle Werte eintragen. Auch den Cash-Bestand als separate Zeile in der Gewichtung aufführen, falls relevant).*

---

## 2. 📰 Top News & fundamentale Treiber
- **🟢 Die Gewinner:** [Welche Aktien liefen gut und warum?]
- **🟡 Die Seitwärtsläufer:** [Welche stagnierten und warum?]
- **🔴 Die Verlierer:** [Welche fielen und warum?]

---

## 3. 🎯 Fazit & Ausblick für die nächste Woche
- **Beobachtung 1:** [Konkreter Katalysator oder Chart-Marke]
- **Beobachtung 2:** [Konkreter Katalysator oder Chart-Marke]
- **Handlungsempfehlung:** [Gibt es Rebalancing-Bedarf aufgrund der RSI/Gewichtung?]
```
