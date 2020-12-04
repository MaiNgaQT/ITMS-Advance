require 'selenium-webdriver'
#require 'webdrivers'

driver = Selenium::WebDriver.for :firefox
#driver = Selenium::WebDriver.for :chrome

driver.get 'https://www.google.com/'
driver.manage.window.resize_to(100,100)

driver.quit