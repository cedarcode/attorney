$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "attorney/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "attorney"
  s.version     = Attorney::VERSION
  s.authors     = ["Gonzalo"]
  s.email       = ["grzuy0@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Attorney."
  s.description = "TODO: Description of Attorney."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"

  s.add_development_dependency "sqlite3"
end
