require 'bundler'
require 'rake/testtask'
Bundler::GemHelper.install_tasks

desc "Run basic tests"
Rake::TestTask.new(:test) do |t|
  t.libs << "lib"
  t.pattern = "test/*_test.rb"
  t.verbose = true
  t.warning = true  
end
