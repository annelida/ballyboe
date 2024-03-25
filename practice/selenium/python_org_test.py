import unittest
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By

class ChromeSearch(unittest.TestCase):

    def setUp(self):
        self.driver = webdriver.Chrome()

    def test_search_in_site(self):
        driver = self.driver
        driver.get("https://www.python.org")
        self.assertTrue("Python" in driver.title)
        elem = driver.find_element(By.NAME, "q")
        elem.clear()
        elem.send_keys("getting started with python")
        elem.send_keys(Keys.RETURN)
        self.assertEqual("https://www.python.org/search/?q=getting+started+with+python&submit=", driver.current_url)


    def tearDown(self):
        self.driver.close()

if __name__== '__main__':
    unittest.main()
