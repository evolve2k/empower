(in /Users/richie/Projects/empower)
# Put this in config/application.rb
require File.expand_path('../boot', __FILE__)

module Empower
  class Application < Rails::Application
  
  # We are using bundler ('gem install bundler') to manage gems. 
  # LIST GEM DEPENDANCIES IN THE PROJECT ROOT FILE CALLED 'Gemfile'  
  #
  #  config.gem "authlogic"  <-- THESE NO LONGER LIVE HERE
  
    config.time_zone = 'UTC'
  end
end
