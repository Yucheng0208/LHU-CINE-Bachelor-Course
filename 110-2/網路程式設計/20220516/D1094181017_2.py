import requests
from lxml import html
r = requests.get("https://www.flag.com.tw/books/school_code_n_algo")
tree = html.fromstring(r.text)
tag_img = tree.xpath("/html/body//section[2]/table/tr[11]/td[3]/a/img")[0]
url =tag_img.attrib["src"]
response = requests.get(url, stream=True)
path = "D1094181017_2.png"
if response.status_code == 200:
    with open(path, 'wb') as fp:
        for chunk in response:
            fp.write(chunk)
    print(url, path,"已完成！！！")
else:
    print("錯誤！HTTP請求失敗！！")