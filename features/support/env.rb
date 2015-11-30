require 'capybara/cucumber'
require 'selenium-webdriver'

require_relative 'world'
require_relative 'driver'

SitePrism.configure do |config|
  config.use_implicit_waits = true
end

World(TestWorld)
