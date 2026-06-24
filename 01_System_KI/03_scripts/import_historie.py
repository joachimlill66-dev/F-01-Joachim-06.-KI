import os
import csv
import re
from collections import defaultdict

csv_path = r"f:\06. KI\03_Trading_und_Boerse\08_Portfolio_Dashboard\Snapshots\Order-Liste 5 Jahre.csv"
archiv_dir = r"f:\06. KI\03_Trading_und_Boerse\10_Trading_Journal\03_Archiv_Historie"

os.makedirs(archiv_dir, exist_ok=True)

def parse_pnl(val_str):
    if not val_str or val_str.strip() in ("-", ""):
        return 0.0
    # Entferne Währungssymbole, Pluszeichen, Leerzeichen. Tausendertrenner '.' entfernen, Komma zu '.'
    v = val_str.replace("$", "").replace("€", "").replace(" ", "").replace("+", "")
    # Falls 1.000,50 Format -> Punkt weg, Komma zu Punkt
    v = v.replace(".", "").replace(",", ".")
    try:
        return float(v)
    except ValueError:
        return 0.0

def parse_year(date_str):
    match = re.search(r"\b(20\d\d)\b", date_str)
    if match:
        return match.group(1)
    return "Unbekannt"

trades_by_year = defaultdict(list)

# CSV einlesen
try:
    with open(csv_path, "r", encoding="utf-8") as f:
        # Die Datei ist tab-getrennt? Oft sind solche ProRealTime Exporte Tabulator- oder Semikolon-getrennt.
        # Aber die Endung ist CSV. Versuchen wir den Sniffer oder explizit Tab/Komma.
        sample = f.read(2048)
        f.seek(0)
        delimiter = "\t" if "\t" in sample else (";" if ";" in sample else ",")
        
        reader = csv.DictReader(f, delimiter=delimiter)
        
        # Normiere Spaltennamen (entferne mögliche fehlerhafte Zeichen)
        reader.fieldnames = [str(name).strip().strip('"').strip("'") for name in reader.fieldnames]
        
        for row in reader:
            if not row: continue
            
            richtung = row.get("Richtung", "")
            status = row.get("Status", "")
            gewinn_str = row.get("Gewinn", "")
            
            if richtung == "Verkauf" and status == "Ausgeführt" and gewinn_str not in ("", "-"):
                year = parse_year(row.get("Datum", ""))
                pnl = parse_pnl(gewinn_str)
                
                trade = {
                    "Datum": row.get("Datum", ""),
                    "Ticker": row.get("Ticker", row.get("Name", "")),
                    "Menge": row.get("Menge", ""),
                    "Preis": row.get("Preis", ""),
                    "Dauer": row.get("Dauer", ""),
                    "PnL_Str": gewinn_str.strip(),
                    "PnL_Float": pnl
                }
                trades_by_year[year].append(trade)

    print(f"Erfolgreich eingelesen. Jahre gefunden: {list(trades_by_year.keys())}")

    # Dateien schreiben
    for year, trades in trades_by_year.items():
        if year == "Unbekannt": continue
        
        total_pnl = sum(t["PnL_Float"] for t in trades)
        wins = sum(1 for t in trades if t["PnL_Float"] > 0)
        losses = sum(1 for t in trades if t["PnL_Float"] <= 0)
        total_trades = len(trades)
        win_rate = (wins / total_trades * 100) if total_trades > 0 else 0
        
        best_trade = max(trades, key=lambda t: t["PnL_Float"]) if trades else None
        worst_trade = min(trades, key=lambda t: t["PnL_Float"]) if trades else None
        
        md_content = f"# 📉 Trading Logbuch: {year}\n\n"
        md_content += "## 📊 Jahres-Statistik\n"
        md_content += f"- **Gesamt Trades:** {total_trades}\n"
        md_content += f"- **Win-Rate:** {win_rate:.1f}% ({wins} Gewinner / {losses} Verlierer)\n"
        md_content += f"- **Jahres-Ergebnis (PnL):** {'+' if total_pnl>0 else ''}{total_pnl:.2f} $\n"
        if best_trade:
            md_content += f"- **Bester Trade:** {best_trade['Ticker']} ({best_trade['PnL_Str']})\n"
        if worst_trade:
            md_content += f"- **Schlechtester Trade:** {worst_trade['Ticker']} ({worst_trade['PnL_Str']})\n\n"
            
        md_content += "---\n\n## 📜 Alle geschlossenen Trades\n\n"
        md_content += "| Datum | Ticker | Menge | Verkaufskurs | Dauer | Gewinn/Verlust (PnL) |\n"
        md_content += "| :--- | :--- | :--- | :--- | :--- | :--- |\n"
        
        # Sortiere chronologisch (einfach anhand des Strings rückwärts oder wie vorgefunden, da ProRealTime meist absteigend sortiert)
        for t in trades:
            md_content += f"| {t['Datum']} | **{t['Ticker']}** | {t['Menge']} | {t['Preis']} | {t['Dauer']} | **{t['PnL_Str']}** |\n"
            
        md_content += "\n\n**Tags:** #Archiv #TradingJournal\n"
        
        file_path = os.path.join(archiv_dir, f"{year}_Trading_Logbuch.md")
        with open(file_path, "w", encoding="utf-8") as out:
            out.write(md_content)
            
        print(f"-> {file_path} erstellt ({total_trades} Trades).")

    print("Import-Skript erfolgreich beendet!")

except Exception as e:
    print(f"Fehler beim Verarbeiten: {e}")
