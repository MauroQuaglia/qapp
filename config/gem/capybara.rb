require 'capybara'
require 'capybara/rails'
require 'capybara/dsl'
require "selenium-webdriver"

Capybara.server = :puma

Capybara.default_driver = :rack_test

Capybara.register_driver(:firefox) do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end
