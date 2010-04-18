require 'spec_helper'

describe Volunteer do
  it { should have_many(:achievements) }
  it { should have_many(:badges).through(:achievements) }
  # FIXME: uninitialized constant Spec::Example::ExampleGroup
  # it { should have_attached_file(:photo) }
  # it { should_not validate_attachment_presence(:photo) }

  it "should be valid" do
    Volunteer.make.should be_valid
  end

  it "should require email" do
    Volunteer.new(Volunteer.make_unsaved(:email => "").attributes).should_not be_valid
  end
  
  it "should generate password on create" do
    volunteer = Volunteer.make(:password => "", :password_confirmation => "")
    volunteer.password.should_not be_blank
  end  
end
