import unittest
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By

class FooBarTestCase(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        cls.driver = webdriver.Chrome()

    @classmethod
    def tearDownClass(cls):
        cls.driver.quit()

    def setUp(self):
        self.driver.get("http://travel.agileway.net")

    def tearDown(self):
        self.driver.find_element(By.LINK_TEXT, "Sign off").click()


    def test_first_case(self):
        self.assertEqual("Agile Travel", self.driver.title)
        self.driver.find_element(By.NAME, "username").send_keys("agileway")
        # ...

    def test_second_case(self):
        self.driver.find_element(By.ID, "register_link").click()
        # ...
        self.assertIn("Register", self.driver.find_element(By.TAG_NAME, "body").text)


if __name__== '__main__':
    unittest.main()
