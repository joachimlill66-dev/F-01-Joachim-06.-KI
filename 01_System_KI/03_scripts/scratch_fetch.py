import urllib.request
import json

tickers = ['GOOGL', 'AMZN', 'ASML', 'AVGO', 'NVDA']
url = f"https://query1.finance.yahoo.com/v7/finance/quote?symbols={','.join(tickers)}"
req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
try:
    with urllib.request.urlopen(req) as response:
        data = json.loads(response.read().decode())
        for result in data['quoteResponse']['result']:
            print(f"{result['symbol']}: {result['regularMarketPrice']}")
except Exception as e:
    print(e)
