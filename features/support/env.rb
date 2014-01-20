ENV["RAILS_ENV"] = "test"
ENV["RAILS_ROOT"] = File.expand_path("../../../spec/dummy", __FILE__)

require "cucumber/rails"
require "selenium/webdriver"
require 'spree/testing_support/factories'
require 'spree_terms_and_conditions/factories'
require 'factory_girl'
require 'ffaker'
require 'database_cleaner'

Cucumber::Rails::World.use_transactional_fixtures = false
DatabaseCleaner.strategy  = :truncation

Dir["#{File.expand_path("../../../", __FILE__)}/spec/support/**/*.rb"].each do |f|
 require f
end

World FactoryGirl::Syntax::Methods

Before do
  DatabaseCleaner.start
end

After do |scenario|
  DatabaseCleaner.clean
end