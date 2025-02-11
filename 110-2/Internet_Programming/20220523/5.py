from selenium import webdriver
from bs4 import BeautifulSoup

driver = webdriver.Chrome("./chromedriver")
driver.implicitly_wait(10)
driver.get("http://example.com")

h1 = driver.find_element_by_tag_name("h1")
print(h1.text)
p = driver.find_element_by_tag_name("p")
print(p.text)
print("........................")

soup = BeautifulSoup(driver.page_source, "lxml")

tag_h1 = soup.find("h1")
print(tag_h1.string)
tag_p = soup.find("p")
print(tag_p.string)
driver.quit()