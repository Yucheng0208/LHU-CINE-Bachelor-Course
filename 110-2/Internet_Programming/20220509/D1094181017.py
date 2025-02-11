#!/usr/bin/env python3
# -*- coding:utf-8 -*-
import csv
import requests
from bs4 import BeautifulSoup

url='https://www.w3schools.com/html/html_media.asp'
response=requests.get(url)
html=response.content

soup=BeautifulSoup(html,'html.parser')
table=soup.find('table', attrs={'class':'ws-table-all notranslate'})
list_of_rows=[]
for row in table.findAll('tr')[1:]:
    list_of_cells=[]
    for cell in row.findAll('td'):
        list_of_cells.append(cell.text)
    list_of_rows.append(list_of_cells)
outfile=open('./output.csv','w', encoding='utf8')
writer=csv.writer(outfile)
writer.writerow(["Format", "File", "Description"])
writer.writerows(list_of_rows)