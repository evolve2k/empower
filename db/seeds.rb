require 'faker'

Volunteer.create!(:given_names => "scott", :surname => "scottish", :email => "scott@scott.com", :password => "scott", :password_confirmation => "scott")

100.times do
  name = Faker::Name.first_name
  Volunteer.create!(
    :given_names           => "#{name} #{Faker::Name.first_name}",
    :surname               => Faker::Name.last_name,
    :email                 => Faker::Internet.email,
    :skype_name            => "skypename",
    :mobile                => Faker::PhoneNumber.phone_number,
    :home_phone            => Faker::PhoneNumber.phone_number,
    :work_phone            => Faker::PhoneNumber.phone_number,
    :password              => "password",
    :password_confirmation => "password"
  )
end

role = Role.create!(
  :name        => "admin",
  :description => "has access to everything"
)
Volunteer.create!(:given_names => "scott", :surname => "scottish", :email => "admin@example.com", :password => "admin", :password_confirmation => "admin", :role => role)

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

10.times do
  Event.create!(
    :creator_id     => Volunteer.all.rand.id,
    :location_id    => 1,
    :weather        => ['Beautiful', 'So hot!', 'Meh','Bit nippy', 'Needed an extra jumper', 'Monsoon'].rand,
    :crowd_size     => ['Busy', 'Not Busy', 'Average'].rand,
    :event_date     => (6.months.ago.to_date..6.months.from_now.to_date).to_a.rand,
    :name           => ['Rundle Street', 'Rose Street Artists Market', 'Bondi Markets', 'Paddington Markets', 'Quarry Markets', 'The Rocks Market', 'Home Rug Party', 'Corporate event', 'Sydney Movie Night', 'Melbourne Movie Night', 'Adelaide Movie Night'].rand
)
end

Badge.create!(
  :name        => "Rug Newbie",
  :description => "Completing first market stall",
  :sql => "1",
  :threshold => "1"
  )

Badge.create!(
  :name        => "Wet Sod",
  :description => "Completed first rainy market",
  :sql => "1",
  :threshold => "1"
  )

Badge.create!(
  :name        => "Commando",
  :description => "Completed 5 rainy markets",
  :sql => "1",
  :threshold => "1"
  )

Badge.create!(
  :name        => "Trooper",
  :description => "Completed 10 markets",
  :sql => "1",
  :threshold => "1"
  )

Badge.create!(
  :name        => "Rugger",
  :description => "Completed 25 markets",
  :sql => "1",
  :threshold => "1"
  )

Badge.create!(
  :name        => "Senior Rugger",
  :description => "Completed 35 rainy markets",
  :sql => "1",
  :threshold => "1"
  )

Badge.create!(
  :name        => "Rugginator",
  :description => "Completed 5 rainy markets",
  :sql => "1",
  :threshold => "1"
  )

Badge.create!(
  :name        => "Rugginator 2",
  :description => "Completed 5 rainy markets",
  :sql => "1",
  :threshold => "1"
  )

Badge.create!(
  :name        => "Rugginator Salvation",
  :description => "THERE WAS NO RUGGINATOR 3. Completed 5 rainy markets",
  :sql => "1",
  :threshold => "1"
  )

10.times do
  Location.create!(
    :name => Faker::Company.bs,
    :postcode => Faker::Address.uk_postcode,
    :address => Faker::Address.secondary_address,
    :suburb  => Faker::Address.street_name,
    :contact_name => Faker::Name.name,
    :contact_phone => Faker::PhoneNumber.phone_number,
    :contact_email => Faker::Internet.email,
    :web_address => Faker::Internet.domain_name
)
end
