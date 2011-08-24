source :rubygems

gem 'rails', '3.0.3'
gem 'authlogic'
gem 'compass'
gem 'haml'
gem 'formtastic'
gem 'paperclip'

group :development, :test, :cucumber do
  gem 'pg' if %w(xavier richie).include?(`whoami`.chomp)
end

group :test do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'machinist', '>= 2.0.0.beta2'
  gem 'pickle'
  gem 'faker'
  gem 'remarkable_activerecord'
  gem 'shoulda'
end

group :cucumber do
  gem 'cucumber'
  gem 'cucumber-rails'
  gem 'webrat'
  gem 'database_cleaner'
end