begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)
task default: :spec
task test: :spec

APP_RAKEFILE = File.expand_path("../spec/support/dummy/Rakefile", __FILE__)
load 'rails/tasks/engine.rake'
load 'rails/tasks/statistics.rake'
require 'bundler/gem_tasks'
