Given /^there are no events available$/ do
  @events = nil
end

Given /^there are many events available$/ do
  (1..10).each do |i|
    Event.make(:event_date => i.weeks.ago)
  end
end
