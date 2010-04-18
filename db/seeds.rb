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

10.times do
  Event.create!(
    :creator_id     => Volunteer.find(:first, :order => "random()").id,
    :location_id    => 1,
    :weather        => ['Beautiful', 'So hot!', 'Meh','Bit nippy', 'Needed an extra jumper', 'Monsoon'].rand,
    :crowd_size     => ['Busy', 'Not Busy', 'Average'].rand,
    :event_date     => (6.months.ago.to_date..6.months.from_now.to_date).to_a.rand,
    :name           => Faker::Company.name)
end
