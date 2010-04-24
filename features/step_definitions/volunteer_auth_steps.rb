Given /^there is a volunteer with the following:$/ do |table|
  table.hashes.each do |hash|
    volunteer = Volunteer.make(hash)
  end
end

Given /^there is an (.*?) volunteer with email '(.*?)'/ do |role, email|
  volunteer = Volunteer.make(:email => email)
  volunteer.roles << Role.find_or_create_by_name(role)
end

Given /^I am logged in as "([^\"]*)"$/ do |email|
  volunteer = Volunteer.make(:email => email)
  volunteer.roles << Role.find_or_create_by_name("Manager")
  visit '/volunteer-login'
  fill_in 'email', :with => email
  fill_in 'password', :with => 'm00c0w'
  click_button 'Login'
end

Then /^I should not be logged in$/ do
  controller.send(:logged_in?).should be_nil
end
