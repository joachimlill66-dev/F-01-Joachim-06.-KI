import os
import re
import yfinance as yf
from datetime import datetime

base_dir = r"f:\06. KI\03_Trading_und_Boerse\09_Einzelaktien_ProRealTime"
template_path = r"f:\06. KI\01_System_KI\03_scripts\01_Vorlagendateien\fundamentaldaten-vorlage.md"

with open(template_path, "r", encoding="utf-8") as f:
    template_content = f.read()

ticker_map = {
    "Adobe": "ADBE",
    "Broadcom": "AVGO",
    "Nike": "NKE",
    "Tesla": "TSLA",
    "ALV": "ALV.DE",
    "ADYEN": "ADYEN.AS",
}

skip_dirs = ["Earnings", "Ufunded"]
date_str = datetime.now().strftime("%Y-%m-%d")

def format_val(val, is_pct=False, decimals=2):
    if val is None:
        return "-"
    try:
        val = float(val)
        if is_pct:
            val = val * 100
        return f"{val:.{decimals}f}"
    except:
        return "-"

for item in os.listdir(base_dir):
    item_path = os.path.join(base_dir, item)
    if not os.path.isdir(item_path) or item in skip_dirs:
        continue
    
    ticker = ticker_map.get(item, item)
    print(f"Fetching data for {item} ({ticker})...")
    
    try:
        info = yf.Ticker(ticker).info
    except Exception as e:
        print(f"Failed to fetch {ticker}: {e}")
        continue
    
    if not info or ("shortName" not in info and "longName" not in info):
        print(f"No valid data found for {ticker}")
        continue
        
    company_name = info.get("longName") or info.get("shortName") or item
    
    # Extract values
    current_price = info.get("currentPrice", info.get("regularMarketPrice"))
    sma50 = info.get("fiftyDayAverage")
    sma200 = info.get("twoHundredDayAverage")
    pe = info.get("trailingPE")
    ps = info.get("priceToSalesTrailing12Months")
    pb = info.get("priceToBook")
    peg = info.get("pegRatio")
    rev_growth = info.get("revenueGrowth")
    eps_growth = info.get("earningsGrowth")
    gross_margin = info.get("grossMargins")
    op_margin = info.get("operatingMargins")
    roic = info.get("returnOnEquity") 
    fcf = info.get("freeCashflow")
    if fcf: fcf_str = f"{fcf / 1e9:.2f} Mrd. USD"
    else: fcf_str = "-"
    debt_eq = info.get("debtToEquity")
    if debt_eq: debt_eq = debt_eq / 100.0
    curr_ratio = info.get("currentRatio")
    div_yield = info.get("dividendYield", 0)
    payout = info.get("payoutRatio", 0)
    
    content = template_content
    # Replace top tags
    content = content.replace("[Firmenname]", company_name)
    content = content.replace("[TICKER]", ticker)
    content = content.replace("{{DATE}}", date_str)
    
    # Line by line replacements
    new_lines = []
    for line in content.split("\n"):
        if "Aktueller Kurs" in line and "SMA 14" in line:
            line = line.replace("[Wert]", f"${format_val(current_price)}", 1)
            line = line.replace("[Wert]", "-", 1)
        elif "Tagesveränderung" in line and "SMA 50" in line:
            line = line.replace("[Wert]", "-", 1)
            line = line.replace("[Wert]", f"${format_val(sma50)}", 1)
        elif "Wochenveränderung" in line and "SMA 200" in line:
            line = line.replace("[Wert]", "-", 1)
            line = line.replace("[Wert]", f"${format_val(sma200)}", 1)
        elif "KGV (P/E Ratio)" in line:
            line = line.replace("[Wert]", format_val(pe), 1)
        elif "KUV (P/S Ratio)" in line:
            line = line.replace("[Wert]", format_val(ps), 1)
        elif "KBV (P/B Ratio)" in line:
            line = line.replace("[Wert]", format_val(pb), 1)
        elif "PEG_Ratio" in line:
            line = line.replace("[Wert]", format_val(peg), 1)
        elif "Umsatzwachstum" in line:
            line = line.replace("[Wert]", format_val(rev_growth, is_pct=True), 1)
        elif "Gewinnwachstum" in line:
            line = line.replace("[Wert]", format_val(eps_growth, is_pct=True), 1)
        elif "Bruttomarge" in line:
            line = line.replace("[Wert]", format_val(gross_margin, is_pct=True), 1)
        elif "Operative_Marge" in line:
            line = line.replace("[Wert]", format_val(op_margin, is_pct=True), 1)
        elif "ROIC" in line:
            line = line.replace("[Wert]", format_val(roic, is_pct=True), 1)
        elif "Free_Cashflow" in line:
            line = line.replace("[Wert]", fcf_str, 1)
        elif "Verschuldungsgrad" in line:
            line = line.replace("[Wert]", format_val(debt_eq, is_pct=True), 1)
        elif "Current_Ratio" in line:
            line = line.replace("[Wert]", format_val(curr_ratio), 1)
        elif "Dividendenrendite" in line:
            line = line.replace("[Wert]", format_val(div_yield, is_pct=True), 1)
        elif "Payout_Ratio" in line:
            line = line.replace("[Wert]", format_val(payout, is_pct=True), 1)
        elif "Aktienrückkäufe" in line:
            line = line.replace("[Wert]", "?", 1)
            
        line = line.replace("[Bemerkung]", "-")
        line = line.replace("[Vergleich]", "-")
        line = line.replace("[Wert]", "-")
            
        new_lines.append(line)
        
    final_content = "\n".join(new_lines)
    
    fazit_str = "- **🟢 Stärken (Bull-Faktor):** Automatischer Datenabruf. Fordere die KI bei Bedarf auf, dieses Fazit zu schreiben.\n- **🔴 Schwächen / Risiken:** -\n- **⚖️ Gesamteindruck:** -"
    # Find the Fazit section and replace the empty ones
    if "- **🟢 Stärken (Bull-Faktor):** \n" in final_content:
        final_content = final_content.replace("- **🟢 Stärken (Bull-Faktor):** \n- **🔴 Schwächen / Risiken:** \n- **⚖️ Gesamteindruck:** ", fazit_str)
    elif "- **🟢 Stärken (Bull-Faktor):**" in final_content:
        final_content = re.sub(r"- \*\*🟢 Stärken \(Bull-Faktor\):\*\*.*\n- \*\*🔴 Schwächen / Risiken:\*\*.*\n- \*\*⚖️ Gesamteindruck:\*\*.*", fazit_str, final_content, flags=re.MULTILINE)

    # Add tags
    final_content = final_content + f"\n**Tags:** #{ticker} #Fundamentaldaten\n\n"
    final_content = final_content + f"## 🔗 Weitere Dateien zu diesem Ticker\n"

    out_file = os.path.join(item_path, f"{date_str}-Fundamentaldaten_{ticker}.md")
    with open(out_file, "w", encoding="utf-8") as f:
        f.write(final_content)
        
    print(f"Saved {out_file}")

print("Batch-Abruf abgeschlossen!")
