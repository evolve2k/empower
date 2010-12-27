source :rubygems

gem "rails", "2.3.10"
gem "authlogic", "2.1.6"
gem "compass", "0.10.6"
gem "haml", "3.0.25"
gem "formtastic", "1.1.0"
gem "paperclip", "2.3.8"

group :development, :test, :cucumber do
  gem "pg", "0.9.0" if %w(xavier richie).include?(`whoami`.chomp)
end

group :test do
  gem "rspec", "1.3.1" #Last version before RSpec 2
  gem "rspec-rails", "1.3.3"  #Last version before RSpec 2
  gem "machinist", "1.0.6" #Last version before Machinist 2
  gem "pickle", "0.3.4"
  gem "faker", "0.3.1"
  gem "remarkable_activerecord", "3.1.13"
  gem "remarkable_rails", "3.1.13"
  gem "remarkable_paperclip", "0.6.4"
  gem "shoulda", "2.11.3"
end

group :cucumber do
  gem "cucumber", "0.10.0"
  gem "cucumber-rails", "0.3.2"
  gem "webrat", "0.7.2"
  gem "database_cleaner", "0.6.0"
  gem "test-unit", "1.2.3"
end