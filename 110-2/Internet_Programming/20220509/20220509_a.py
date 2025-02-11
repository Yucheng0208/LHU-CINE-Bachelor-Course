import requests
from bs4 import BeautifulSoup
import csv
r = requests.get("https://www.w3schools.com/html/html_media.asp")
soup = BeautifulSoup(r.text, "html.parser")
div = soup.find(class_="ws-table-all notranslate")
#for i in range(1, 10):
#    tr = div.select(f'tr:nth-child({i})')
#    for j in tr:
#        print(j.text)
with open('eee.csv', 'w', newline='', encoding='utf-8') as f:
    writer = csv.writer(f, delimiter=',')
    for i in range(1, 10):
        tr = div.select(f'tr:nth-child({i})')
        for j in tr:
            writer.writerow([j.text])
            print(j.text)
