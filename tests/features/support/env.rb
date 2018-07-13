require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'http://professor.homolog.fund.appprova.com.br'
    config.default_max_wait_time = 15
end