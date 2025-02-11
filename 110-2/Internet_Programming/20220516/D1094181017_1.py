import re
import requests
from bs4 import BeautifulSoup

url = "https://www.google.com.tw"
path = "logo.png"
r = requests.get(url)
r.encoding = "utf8"
soup = BeautifulSoup(r.text, "lxml")
tag_a = soup.find(alt="Google")

match =re.search(r"(/[^/#?]+)+\.(?:jpg|gif|png)", str(tag_a))
print(match.group())
url = url + str(match.group())
response = requests.get(url, stream=True)

if response.status_code == 200:
    with open(path, 'wb') as fp:
        for chunk in response:
            fp.write(chunk)
    print(url, path,"已完成！！！")
else:
    print("錯誤！HTTP請求失敗！！")