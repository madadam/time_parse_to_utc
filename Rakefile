# encoding: utf-8
require 'rake/testtask'

task :default => :test

Rake::TestTask.new(:test) do |task|
  task.test_files = FileList['test/**/*_test.rb']
  task.verbose = true
end

begin
  require 'jeweler'

  Jeweler::Tasks.new do |gemspec|
    gemspec.name     = 'time_parse_to_utc'
    gemspec.summary  = 'Method to parse string into an UTC Time object'
    gemspec.description = 'This gem extends the Time class with parse_to_utc method, which parses a string and returns a Time converted to UTC.'

    gemspec.email    = 'adam@3scale.net'
    gemspec.homepage = 'http://www.3scale.net'
    gemspec.authors  = ['Adam Cigánek']
  end

  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end
