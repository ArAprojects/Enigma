require 'simplecov'
SimpleCov.start do
  add_filter 'test'
end
require 'rake/testtask'

task :default => :test

task :test do
 Dir.glob('./test/*_test.rb').each { |file| require file}
end

require 'MiniTest/pride'
require 'MiniTest/autorun'
require 'pry'
