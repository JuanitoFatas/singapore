require "rake"
require "rake/testtask"
require "bundler/gem_tasks"

task default: :test

desc "Run all tests"
Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList["test/**/*_test.rb"]
  t.verbose = true
end
