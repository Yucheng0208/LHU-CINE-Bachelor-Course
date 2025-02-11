# from bs4 import BeautifulSoup
# with open("https://search.books.com.tw/search/query/key/%E7%88%AC%E8%9F%B2/cat/all", "r", encoding="utf8") as fp:
#     soup = BeautifulSoup(fp, "lxml")

# tag_a = soup.findAll("a")
# for i in tag_a:
#     print(i.text)
# ----------------------------------------------------
# tag_div = soup.find("div", id="q2")
# tag_list = tag_div.find_all("li")
# print(tag_list)
# tag_list = tag_div.find_all("li", recursive=False)
# print(tag_list)

# ----------------------------------------------------
import requests
from bs4 import BeautifulSoup
response = requests.get(
    "https://search.books.com.tw/search/query/key/%E7%88%AC%E8%9F%B2/cat/all")
soup = BeautifulSoup(response.text, "html.parser")
tag_h4 = soup.findAll("h4")
for i in tag_h4:
    print(i.text)
# -----------------------------------------------------
    # print(soup.prettify())  #輸出排版後的HTML內容