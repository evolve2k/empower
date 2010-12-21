source :rubygems

gem "rails", "2.3.5"
gem "authlogic"
gem "compass"
gem "haml"
gem "formtastic"
gem "paperclip"

group :development, :test, :cucumber do
  gem "pg", '0.9.0'
end

group :development do
  gem "pg" if %w(xavier).include?(`whoami`.chomp)
end

group :test do
  gem "rspec", '1.3.1' #Last version before RSpec 2
  gem "rspec-rails", '1.3.3'  #Last version before RSpec 2
  gem "machinist", '1.0.6' #Last version before Machinist 2
  gem "pickle"
  gem "faker"
  gem "remarkable_activerecord"
  gem "remarkable_rails"
  gem "remarkable_paperclip"
  gem "shoulda"
end

group :cucumber do
  gem "webrat"
  gem "database_cleaner"
  gem "cucumber-rails"
  gem "test-unit", "1.2.3"
end
