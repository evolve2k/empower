Given /^there are no badges$/ do
  Badge.all.map(&:delete)
end
