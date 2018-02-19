$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "attorney/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "attorney"
  s.version     = Attorney::VERSION
  s.authors     = ["Gonzalo"]
  s.email       = ["grzuy0@gmail.com"]
  s.summary     = "attorney"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails", "~> 3.7"
  s.add_development_dependency "shoulda-matchers", "~> 3.1"
  s.add_development_dependency "appraisal", "~> 2.2"
end
