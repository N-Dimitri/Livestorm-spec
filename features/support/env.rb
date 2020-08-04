require 'capybara/cucumber'
require 'webdrivers'
require 'selenium-webdriver'
require 'dotenv'
Dotenv.load

#Chrome non-headless driver
  Capybara.register_driver :chrome do |app|
    profile = Selenium::WebDriver::Chrome::Profile.new
    profile['intl.accept_languages'] = 'fr'
    Capybara::Selenium::Driver.new(app, browser: :chrome, profile: profile)
  end

#Chrome headless driver
  Capybara.register_driver :headless_chrome do |app|
    caps = Selenium::WebDriver::Remote::Capabilities.chrome(loggingPrefs: { browser: 'ALL' })
    opts = Selenium::WebDriver::Chrome::Options.new
    profile = Selenium::WebDriver::Chrome::Profile.new
    profile['intl.accept_languages'] = 'fr'
    chrome_args = %w[--headless --no-sandbox --disable-gpu --window-size=1920,1080 --remote-debugging-port=9222]
    chrome_args.each { |arg| opts.add_argument(arg) }
    Capybara::Selenium::Driver.new(app, browser: :chrome, profile: profile, options: opts, desired_capabilities: caps)
  end

  #Switch between :chrome / :headless_chrome to see tests run in chrome
  case ENV['HEADLESS']
  when 'true', 1, nil
    Capybara.default_driver = :headless_chrome
  else
    Capybara.default_driver = :chrome
  end