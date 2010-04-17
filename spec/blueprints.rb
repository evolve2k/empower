require 'machinist/active_record'
require 'sham'
require 'faker'

Sham.body     { Faker::Lorem.paragraph }
Sham.email    { Faker::Internet.email }
Sham.heading  { Faker::Name.name }
Sham.name     { Faker::Name.name }
Sham.title    { Faker::Lorem.sentence }

Volunteer.blueprint do
  
end
