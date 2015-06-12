# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_terms_and_conditions'
  s.version     = '2.2.2'
  s.summary     = 'Add terms and conditions checkbox in delivery stage of checkout'
  s.description = ''
  s.required_ruby_version = '>= 2.0.0'

  s.author    = 'Francisco Trindade'
  s.email     = 'frank.trindade@gmail.com'
  # s.homepage  = 'http://www.spreecommerce.com'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core',  '~> 2.4.0'
  s.add_dependency 'spree_frontend', '~> 2.4.0'
  s.add_dependency 'spree_backend', '~> 2.4.0'
  s.add_dependency 'haml-rails'

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'cucumber-rails'
  s.add_development_dependency 'launchy'
end
