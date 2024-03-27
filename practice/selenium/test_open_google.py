import unittest
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
import time


class OpenGoogle(unittest.TestCase):

    def setUp(self):

        self.driver = webdriver.Chrome()
        self.driver.get("http://www.google.com")
        self.driver.find_element(By.ID, "L2AGLb").click() 

    def test_google_search(self):

        elem = self.driver.find_element(By.NAME, "q")
        elem.send_keys("Hello WebDriver!")
        elem.send_keys(Keys.RETURN)
        time.sleep(1)
        print(self.driver.title)


    def tearDown(self):

        self.driver.quit()


if __name__== '__main__':
    unittest.main()

