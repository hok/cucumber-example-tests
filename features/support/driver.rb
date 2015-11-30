Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.default_driver = :selenium
Capybara.app_host = 'http://www.which.co.uk'
Capybara.ignore_hidden_elements = false
