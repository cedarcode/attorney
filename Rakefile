begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)
task default: :spec
task test: :spec

require 'rails'
if Rails.version.start_with?('5.0')
  APP_RAKEFILE = File.expand_path('../spec/support/dummy/rails5_0/Rakefile', __FILE__)
elsif Rails.version.start_with?('5.1')
  APP_RAKEFILE = File.expand_path('../spec/support/dummy/rails5_1/Rakefile', __FILE__)
end


load 'rails/tasks/engine.rake'
load 'rails/tasks/statistics.rake'
require 'bundler/gem_tasks'
