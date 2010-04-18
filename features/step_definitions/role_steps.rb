Given /^the role "([^\"]*)" has permission "([^\"]*)"$/ do |role, permission|
  Role.find_by_name(role).permissions.create!(:name => permission)
end
