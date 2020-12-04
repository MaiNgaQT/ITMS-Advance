require 'selenium-webdriver'
#require 'webdrivers'

driver = Selenium::WebDriver.for :firefox
#driver = Selenium::WebDriver.for :chrome

#open browser
driver.navigate.to 'https://www.google.com/'

#maximize/resize browser
driver.manage.window.maximize
#driver.manage.window.resize_to(300, 300)

#get title of page and print it
puts "Page title is #{driver.title}"

driver.quit

