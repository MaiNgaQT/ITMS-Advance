require 'selenium-webdriver'
#require 'webdrivers'

driver = Selenium::WebDriver.for :firefox
#driver = Selenium::WebDriver

#open google
driver.get 'https://www.google.com/'

#maximize browser window
driver.manage.window.maximize

#search with 'iTMS Coaching' word
element = driver.find_element(css: '[name="q"]')
element.send_keys "iTMS Coaching"
element.submit

#get page tile and print it
puts "Page tile is #{driver.title}"

#close browser
driver.quit