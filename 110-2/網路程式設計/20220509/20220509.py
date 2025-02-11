from bs4 import BeautifulSoup
import re

with open("./20220509_a/Example.html", encoding='utf-8') as f:
    soup = BeautifulSoup(f, "html.parser")
    f.close()
divEmail = soup.find(class_="emails")
res = re.findall(f"[a-z0-9\.\-+_@[a-z0-0\.\-+_]+@[a-z0-9\.\-+_]+\.[a-z]+", divEmail.text)
for i in res:
    print(i)