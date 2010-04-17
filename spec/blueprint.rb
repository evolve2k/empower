require 'machinist/active_record'
require 'sham'
require 'faker'

Sham.name  { Faker::Name.name }
Sham.login { Faker::Internet.user_name.gsub(/W/, '')[0..14] } # max 15 chars
Sham.email { Faker::Internet.email }
Sham.message { Faker::Lorem.sentence }

Volunteer.blueprint do
  email
  password 'm00c0w'
  password_confirmation 'm00c0w'
end