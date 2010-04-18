require 'faker'

Volunteer.create!(:given_names => "scott", :surname => "scottish", :email => "scott@scott.com", :password => "scott", :password_confirmation => "scott")

100.times do 
  name = Faker::Name.first_name
  Volunteer.create!(
    :given_names           => "#{name} #{Faker::Name.first_name}",
    :surname               => Faker::Name.last_name,
    :email                 => Faker::Internet.email, 
    :skype_name            => name,
    :mobile                => Faker::PhoneNumber.phone_number,
    :home_phone            => Faker::PhoneNumber.phone_number,
    :work_phone            => Faker::PhoneNumber.phone_number,
    :password              => "password", 
    :password_confirmation => "password"
  )
end