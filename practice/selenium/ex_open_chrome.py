from selenium import webdriver
import time
driver = webdriver.Chrome()
driver.get("https://annelida.github.io/")
time.sleep(1) # wait 1 second
driver.quit()
