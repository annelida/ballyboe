from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
import time

driver = webdriver.Chrome()
driver.get("https://annelida.github.io/")
elem = driver.find_element(By.ID, "text-table-of-contents").text
time.sleep(1) # wait 1 second
print(elem)
driver.quit()
