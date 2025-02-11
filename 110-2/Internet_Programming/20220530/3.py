from selenium import webdriver
from selenium.webdriver.common.keys import Keys


driver = webdriver.Chrome("./chromedriver")
driver.implicitly_wait(10)
url = "https://www.github.com/login"
driver.get(url)

username = "**************"
password = "**************"
user = driver.find_element_by_css_selector("#login_field")
user.send_keys(username)
pwd = driver.find_element_by_css_selector("#password")
pwd.send_keys(password)
button = driver.find_element_by_css_selector("input.btn.btn-primary.btn-block")
button.click()

items = driver.find_elements_by_xpath("//header/div[3]/nav[1]/a")
for item in items:
    print(item.text)
    print(item.get_attribute("href"))
driver.quit()