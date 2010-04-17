When /^that volunteer is saved$/ do
  model('that volunteer').save!
end

Then /^that volunteer should have the following badges:$/ do |table|
  model('that volunteer').badges.collect(&:name).should =~ table.raw.flatten
end
