# Require config/environment.rb
require ::File.expand_path('../config/environment',  __FILE__)

set :app_file, __FILE__

run Sinatra::Application

# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application

