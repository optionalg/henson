$:.unshift File.expand_path('..', __FILE__)
$:.unshift File.expand_path('../../lib', __FILE__)

require 'rubygems'
require 'rspec'
require 'mocha_standalone'

RSpec.configure do |config|
  config.before(:suite) do
    get_your_setup_on
  end

  config.after(:suite) do
    tear_that_shit_down
  end
end

def get_your_setup_on
end

def tear_that_shit_down
end
