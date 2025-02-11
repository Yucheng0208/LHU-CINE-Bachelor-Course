from selenium import webdriver
import time

driver = webdriver.Chrome("./chromedriver")

time.sleep(25)
driver.quit()