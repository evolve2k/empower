Given /^the following events:$/ do |events|
  Event.create!(events.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) event$/ do |pos|
  visit events_url
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following events:$/ do |expected_events_table|
  expected_events_table.diff!(tableish('table tr', 'td,th'))
end
