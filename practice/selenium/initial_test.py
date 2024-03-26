from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By

driver = webdriver.Chrome()
driver.get("http://www.google.com")
driver.find_element(By.ID, "L2AGLb").click() 
elem = driver.find_element(By.NAME, "q")
elem.send_keys("Hello WebDriver!")
elem.send_keys(Keys.RETURN)
print(driver.title)
driver.close()


