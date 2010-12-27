# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.10' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

# We are using bundler ('gem install bundler') to manage gems. 
# LIST GEM DEPENDANCIES IN THE PROJECT ROOT FILE CALLED 'Gemfile'  
#
#  config.gem "authlogic"  <-- THESE NO LONGER LIVE HERE

  config.time_zone = 'UTC'
end
