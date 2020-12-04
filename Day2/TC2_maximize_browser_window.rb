require 'selenium-webdriver'
#require 'webdrivers'

driver = Selenium::WebDriver.for :firefox
#driver = Selenium::WebDriver.for :chrome
driver.navigate.to 'https://www.google.com/'
sleep 5
driver.manage.window.maximize

driver.quit