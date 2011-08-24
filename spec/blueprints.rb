require 'machinist/active_record'
# require 'sham'
# require 'faker'

# Sham.name    { Faker::Name.name }
# Sham.login   { Faker::Internet.user_name.gsub(/W/, '')[0..14] } # max 15 chars
# Sham.email   { Faker::Internet.email }
# Sham.message { Faker::Lorem.sentence }
# Sham.photo   { ActionController::TestUploadedFile.new(Dir.glob(File.join(Rails.root, 'spec/fixtures/photos/*.png')).rand) }

Badge.blueprint do
  name {"Awesome Badge"}
  sql  { sn }
  threshold {1}
end

Permission.blueprint do
end

Role.blueprint do
end

Volunteer.blueprint do
  email { "john-#{sn}@example.com"}
  password { "password" }
  password_confirmation { "password" }
end

Volunteer.blueprint(:with_photo) do
  photo { Sham.photo }
end

Event.blueprint do
  name  { "Bondi Market Stall-#{sn}"}
  creator_id 1
  location_id 1
  weather { ['Beautiful', 'So hot!', 'Meh','Bit nippy', 'Needed an extra jumper', 'Monsoon'].rand }
  crowd_size { ['Busy', 'Not Busy', 'Average'].rand }
  event_date { 1.months.ago }
end
