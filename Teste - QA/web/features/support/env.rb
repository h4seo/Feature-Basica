require "allure-cucumber"
require "capybara"
require "capybara/cucumber"
require "rufo"
require "date"

case ENV["BROWSER"]
when "firefox"
  @driver = :selenium
when "chrome"
  @driver = :selenium_chrome
when "firefox_headless"
  @driver = :selenium_headless
when "chrome_headless"
  @driver = :selenium_chrome_headless
else
  raise "Sem navegador definido em Cucumber.yaml"
end

#require_relative "helpers"
require_relative "actions"

#World(Helpers)
World(Actions)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 30
  config.app_host = "http://automationpractice.com/"
end

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end
