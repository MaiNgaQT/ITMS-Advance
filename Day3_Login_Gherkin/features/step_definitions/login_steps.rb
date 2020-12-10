Given('I go to Login Page') do
    require 'selenium-webdriver'
    @driver = Selenium::WebDriver.for :firefox
    @driver.get('http://the-internet.herokuapp.com/login')
end
When('I enter the username as {string} And password as {string}') do |string, string2|
    @driver.find_element(:id, 'username').send_keys(string)
    @driver.find_element(:id, 'password').send_keys(string2)
    @driver.find_element(:css, '.fa').click
end
Then('I get a mesage as {string}') do |string|
    wait = Selenium::WebDriver::Wait.new(timeout: 10)  #seconds
    wait.until{@driver.find_element(:id, 'flash')}
    expect(@driver.find_element(:id, 'flash').text.delete("\n")).to eq(string)
    @driver.quit
  end