require 'spec_helper'

describe Volunteer do
  it "should be valid" do
    Volunteer.make.should be_valid
  end

  it "should require email" do
    Volunteer.make(:email => nil).should_not be_valid
  end
end
