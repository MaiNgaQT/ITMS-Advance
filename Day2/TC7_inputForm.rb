require 'selenium-webdriver'
#require 'webdrivers'

driver = Selenium::WebDriver.for :firefox
#driver = Selenium:WebDriver.for :chrome

#open website
driver.navigate.to 'https://itmscoaching.herokuapp.com/form'
#driver.get 'https://itmscoaching.herokuapp.com/form'

#resize browser window
driver.manage.window.resize_to(800, 800)

#enter data
first_name = driver.find_element(id: 'first-name')
first_name.send_keys "iTMS"

last_name = driver.find_element(id: 'last-name')
last_name.send_keys "Coaching"

job_title = driver.find_element(id: 'job-title')
job_title.send_keys "QA"

#radio button
education_level = driver.find_element(id: 'radio-button-2').click

#check box
sex = driver.find_element(id: 'checkbox-1').click

#select value from combobox
experience = driver.find_element(id: 'select-menu')
exp_option = Selenium::WebDriver::Support::Select.new(experience)
#exp_option.select_by(:text, '2-4')
exp_option.select_by(:value, '2')

#datepickder
date = driver.find_element(id: 'datepicker').send_keys("10/27/2015")

#click on submit button
submit = driver.find_element(link_text: 'Submit').click

#close browser
driver.quit