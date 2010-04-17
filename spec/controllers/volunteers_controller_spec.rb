require 'spec_helper'

describe VolunteersController, "POST create" do

  describe "#index" do
    it "finds all volunteers" do
      Volunteer.should_receive(:all).and_return('some objects')
  	  process :index
  	  assigns[:volunteers].should == 'some objects'
	  end
  end

  describe "#new" do
    it "instantiate a new volunteer" do
      volunteer = mock('a volunteer')
      Volunteer.should_receive(:new).and_return(volunteer)
      get :new
    end
  end

end

