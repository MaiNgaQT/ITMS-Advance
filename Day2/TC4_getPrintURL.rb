require 'selenium-webdriver'
#require 'webdrivers'

driver = Selenium::WebDriver.for :firefox
#driver = Selenium::WebDriver.for :chrome

driver.get 'https://www.google.com/'

driver.manage.window.maximize

#print current url
puts "Current URL is #{driver.current_url}"

driver.quit