Given /^there is a volunteer with the following details:$/ do |table|
  volunteer = Volunteer.make

  fields.rows_hash.each do |name, value|
    volunteer.send(name + '=', value)
  end
end