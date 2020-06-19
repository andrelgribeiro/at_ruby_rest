require 'rspec'
require 'httparty'
require 'pry'

NIVEL = ENV['NIVEL']

PATH_PAYLOADS = File.dirname(__FILE__) + "/payloads/" + NIVEL + "/"
PATH_MASSA = File.dirname(__FILE__) + "/massa/" + NIVEL + "/"
PATH_CONFIG = File.dirname(__FILE__) + "/config/"

URL = YAML.load_file(File.dirname(__FILE__) + '/config/url.yml')
ENDPOINT = YAML.load_file(File.dirname(__FILE__) + '/config/endpoint.yml')

Dir[File.join(File.dirname(__FILE__), 'spec_helper/*.rb')].each { |file| require file }

World(INSTANCIAS)