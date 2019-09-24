require 'capybara'
require 'capybara/cucumber'
require 'httparty'
require 'json'
require 'selenium-webdriver'
require 'rspec'
require 'rspec/expectations'
require 'rspec/json_expectations'
require 'rubygems'
require 'time'
require 'faker'
require 'cpf_faker'

require File.join(File.dirname(__FILE__), '/helpers/GenericPageHelper')
require File.join(File.dirname(__FILE__), '/helpers/LoginPageHelper')
require File.join(File.dirname(__FILE__), '/helpers/SignUpPageHelper')

include GenericPageHelper
include LoginPageHelper
include SignUpPageHelper

Capybara.register_driver :selenium do |app|
    browser_options = ::Selenium::WebDriver::Chrome::Options.new
    # browser_options.args << '--headless'
    browser_options.args << '--disable-gpu' if Gem.win_platform?
    browser_options.args << '--no-default-browser-check'
    browser_options.args << '--start-maximized'

    Capybara::Selenium::Driver.new(app, browser: :chrome, options: browser_options)
  end
    
  Capybara.configure do |config|
      config.default_driver = :selenium
      config.app_host = 'https://www.netshoes.com.br/'
      config.ignore_hidden_elements = true
      Capybara.javascript_driver = :webkit
  end
  
  Capybara.default_max_wait_time = 20

### Jenkins Configuration

# @browser = ENV["BROWSER"]  

# if @browser.eql?("headless")
#     puts "Executando com Headless"

# # Utilizar selenium do meu próprio servidor e ignorar o do servidor existente

#     # Capybara.javascript_driver = :selenium
#     # Capybara.run_server = false

#     Capybara.register_driver :selenium do |app|
#     browser_options = ::Selenium::WebDriver::Chrome::Options.Chrome
#     browser_options.args << '--headless'
#     browser_options.args << '--no-default-browser-check'
#     browser_options.args << '--start-maximized'
#     Capybara::Selenium::Driver.new(
#       app, 
#       browser: :chrome, 
#       #url: 'http://selenium:4444/wd/hub',
#       options: browser_options, 
#       )
#     end

# else 
#     puts "Executando sem Headless"
# end