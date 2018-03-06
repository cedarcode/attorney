$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'attorney/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'attorney'
  s.version     = Attorney::VERSION
  s.authors     = ['Gonzalo Rodriguez', 'Marcelo Casiraghi']
  s.email       = ['gonzalo@cedarcode.com', 'marcelo@cedarcode.com']
  s.summary     = "Easily define and mount 'Terms of Service', 'Privacy Policy' and any other static page to your Rails app"
  s.license     = 'Mozilla Public License 2.0'

  s.files = Dir['{app,config,db,lib}/**/*', 'Rakefile']
  s.test_files = `git ls-files -- spec/*`.split("\n")

  s.add_dependency 'rails', '~> 5.0'
  s.add_dependency 'jquery-rails', '~> 4.3'

  s.add_development_dependency 'sqlite3', '~> 1.3'
  s.add_development_dependency 'rspec-rails', '~> 3.7'
  s.add_development_dependency 'capybara', '~> 2.7'
  s.add_development_dependency 'launchy', '~> 2.4'
  s.add_development_dependency 'shoulda-matchers', '~> 3.1'
  s.add_development_dependency 'appraisal', '~> 2.2'
end
