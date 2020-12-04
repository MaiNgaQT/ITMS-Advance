require 'selenium-webdriver'
#require 'webdrivers'

driver = Selenium::WebDriver.for :firefox
#driver = Selenium::WebDriver.for :chrome

#open google
driver.navigate.to 'https://www.google.com/'

#maximize browser
driver.manage.window.maximize

#get page source and print it
puts "Page Source is #{driver.page_source}"

#close browser
driver.quit