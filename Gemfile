source :rubygems

gem "rails", "2.3.5"
gem "authlogic"
gem "compass"
gem "haml"
gem "formtastic"
gem "mysql"
gem "paperclip"

group :development do
  gem "pg" if %w(xavier).include?(`whoami`.chomp)
end

group :test do
  gem "rspec"
  gem "rspec-rails"
  gem "machinist"
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
