require 'faker'

Volunteer.create!(:email => "scott@scott.com", :password => "scott", :password_confirmation => "scott")

100.times do 
  Volunteer.create!(:email => Faker::Internet.email, :password => "password", :password_confirmation => "password")
end