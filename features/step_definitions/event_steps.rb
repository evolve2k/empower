Given /^there are no events available$/ do
  @events = nil
end


Given /^there are events available$/ do
  @events = Event.all
end
