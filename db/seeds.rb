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

Role.create!(
  :name        => "admin",
  :description => "has access to everything"
)

Role.create!(
  :name        => "national",
  :description => "national only"
)

Role.create!(
  :name        => "regional",
  :description => "regional only"
)

Role.create!(
  :name        => "clerical",
  :description => "only day to day office activities ie: adding members"
)

20.times do
  Permission.create!(
    :name        => Faker::Name.first_name,
    :description => Faker::Lorem.sentence
  )
end

Role.all.each do |role|
  6.times do
    role.permissions << Permission.all.rand
  end
  role.save!
end