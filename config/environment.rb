# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem "authlogic"
  config.gem 'compass', :version => '>= 0.8.17'
  config.gem "haml"
  config.gem "formtastic"
  config.gem "will_paginate", :version => '2.3.12'

  config.time_zone = 'UTC'
end
