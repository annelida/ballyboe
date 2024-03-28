import re
from playwright.sync_api import Page, expect


def test_has_title(page: Page):
    page.goto("http://travel.agileway.net")

    expect(page).to_have_title(re.compile("Agile Travel"))
   
