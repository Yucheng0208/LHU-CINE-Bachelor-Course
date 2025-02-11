from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time
import csv
driver = webdriver.Chrome("./chromedriver")
driver.implicitly_wait(10)
driver.get("https://munchery.com/")

accept_click = driver.find_element_by_xpath('/html/body/div[1]/div[1]/div[5]/div[2]/button')
accept_click.click()

element = driver.find_element_by_xpath('/html/body/div[1]/div[1]/div[2]/div[1]/div[2]/div/input')
element.send_keys('cake')
element.send_keys(Keys.ENTER)
time.sleep(2)

titles = driver.find_elements_by_class_name('Card__CardTitle-sc-163mkhn-6.fLdxov.mt-2')
i=0
with open('Test1.csv', 'w', newline='', encoding='utf-8') as f:
    writer = csv.writer(f, delimiter=',')
    for title in titles:
        #writer.writerow([title.text] + [title.get_attribute('href')])
        print(title.text, title.get_attribute('href'))
        i = i + 1
        if (i==20):
            break
time.sleep(1)
driver.close()