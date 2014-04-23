ENV['RACK_ENV'] = 'test'

require 'bundler/setup'

require 'simplecov'
SimpleCov.start

require 'bilvision'

RSpec.configure do |config|
  config.color_enabled = true
end