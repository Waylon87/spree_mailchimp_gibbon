# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_mailchimp_gibbon'
  s.version     = '0.0.8'
  s.summary     = 'Mail Chimp subscriptions for Spree using gibbon Mailchimp API wrapper'
  s.author      = 'Jerrold Thompson'
  s.email       = 'jet@whidbey.net'
  s.homepage    = 'https://github.com/bluehandtalking/spree_mailchimp_gibbon'
  
  s.required_ruby_version = '>= 2.0.0'
  
  s.files         = `git ls-files --others`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path  = 'lib'
  s.requirements  << 'none'
  s.has_rdoc      = true

  s.add_dependency 'gibbon', '~> 1.0.4'
  s.add_dependency 'spree_core', '~> 2.4.0'
  
  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner', '<= 1.0.1'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.14'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'shoulda'
end
