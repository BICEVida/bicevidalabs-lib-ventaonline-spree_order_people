# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_order_people'
  s.version     = '2.3'
  s.summary     = 'A spree representation of people related to an order, for general-purpose use.'
  s.description = ''
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Sebastián Vicencio'
  s.email     = 'sivicencio@acid.cl'
  # s.homepage  = 'http://www.spreecommerce.com'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.3.0'

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'shoulda'
  s.add_development_dependency 'sass-rails', '~> 4.0.3'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'slim'
  s.add_development_dependency 'simple_form'
end
