require 'rubygems'

begin
  require 'bundler'
rescue LoadError => e
  STDERR.puts e.message
  STDERR.puts "Run `gem install bundler` to install Bundler."
  exit e.status_code
end

begin
  Bundler.setup(:default, :development, :test)
rescue Bundler::BundlerError => e
  STDERR.puts e.message
  STDERR.puts "Run `bundle install` to install missing gems."
  exit e.status_code
end

if %w(1.8.7 2.2.0 2.2.2 2.3.0).include? RUBY_VERSION
  require 'minitest/autorun'
end

require 'minitest/unit'

class MiniTest::Unit::TestCase
end

MiniTest::Unit.autorun
