# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
# We are using bundler 'gem install bundler' for managing our gems
# make record of gem dependancies in the file 'Gemfile', it's easy to see the format by looking at the file.

#config.gem "authlogic"
#config.gem 'compass', :version => '>= 0.8.17'
#config.gem "haml"
#config.gem "formtastic"

  config.time_zone = 'UTC'
end

