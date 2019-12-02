require 'cucumber'
require 'httparty'
require 'rspec'
require 'pry'

ENVIRONMENT = ENV['ENVIRONMENT']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/dev.yml")
MASSA = YAML.load_file(File.dirname(__FILE__) + "/config/massa.yml")