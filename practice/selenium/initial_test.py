from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By

driver = webdriver.Chrome()
driver.get("http://www.google.com")
elem = driver.find_element(By.NAME, "q")
elem.send_keys("Hello WebDriver!")
elem.submit()

print(driver.title)
