require 'faker'

Volunteer.create!(:email => "scott@scott.com", :password => "scott", :password_confirmation => "scott")

100.times do 
  Volunteer.create!(
    :given_names           => "#{Faker::Name.first_name} #{Faker::Name.first_name}",
    :surname               => Faker::Name.last_name,
    :email                 => Faker::Internet.email, 
    :password              => "password", 
    :password_confirmation => "password"
  )
end