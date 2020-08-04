require 'capybara/cucumber'
require 'webdrivers'
require 'selenium-webdriver'


Capybara.default_driver = :selenium_chrome_headless
Capybara.app_host = "https://app.livestorm.co/"
