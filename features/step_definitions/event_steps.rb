Given /^I am logged in as "([^\"]*)"$/ do |email|
  Volunteer.make(:email => email)
  visit '/volunteer-login'
  fill_in 'email', :with => email
  fill_in 'password', :with => 'm00c0w'
  click_button 'Login'
end

Given /^there are no events available$/ do
  @events = nil
end

Given /^there are events available$/ do
  @events = Event.find :all
end

