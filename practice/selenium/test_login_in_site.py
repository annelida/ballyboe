import unittest
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
import time

class LoginScenario(unittest.TestCase):

    def setUp(self):
        self.driver = webdriver.Chrome()

    def test_login_in_site(self):

        driver = self.driver
        driver.get("http://travel.agileway.net")
        driver.find_element(By.ID, "username").send_keys("agileway") # Textfield
        driver.find_element(By.ID, "password").send_keys("testwise") # Textfield
        driver.find_element(By.NAME, "remember_me").click() # Checkbox
        self.assertTrue(driver.find_element(By.CSS_SELECTOR, "input[value='Sign in']").is_displayed())
        self.assertTrue(driver.find_element(By.CSS_SELECTOR, "input[value='Sign in']").is_enabled())
        driver.find_element(By.CSS_SELECTOR, "input[value='Sign in']").click() #Button
        time.sleep(1) # wait 1 second

    def tearDown(self):
        self.driver.quit()

if __name__== '__main__':
    unittest.main()      
