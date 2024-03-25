import unittest
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By

class SearchText(unittest.TestCase):
    @classmethod
    def setUpClass(inst):
        # Open a session
        inst.driver = webdriver.Chrome()
        inst.driver.implicitly_wait(30)
        inst.driver.maximize_window()
        # Go to the app home page
        inst.driver.get("http://www.google.com/")
        inst.driver.title

    def test_search_by_text(self):
        # Get the search box
        self.search_field = self.driver.find_element(By.NAME, "q")
        self.search_field.clear()
        # Enter the search term and submit
        self.search_field.send_keys("Selenium Webdriver interview questions")
        self.search_field.submit()
        # Get the list of elements which are displayed after the search
        # currently on result page by using the below method
        lists = self.driver.find_elements(By.CLASS_NAME, "r")
        self.assertEqual(11, len(lists))

    def test_search_by_name(self):
        # Get the search box
        self.search_field = self.driver.find_element(By.NAME, "q")
        # Enter the search term and submit
        self.search_field.send_keys("Python class")
        self.search_field.submit()
        # Get the list of elements which are displayed after the search
        # currently on result page by using the below api
        list_new = self.driver.find_elements(BY.CLASS_NAME, "r")
        self.assertEqual(11, len(list_new))

    @classmethod
    def tearDownClass(inst):
        # close the browser window
        inst.driver.quit()

if __name__ == '__main__':
    unittest.main()
