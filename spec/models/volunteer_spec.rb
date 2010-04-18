require 'spec_helper'

describe Volunteer do
  it { should have_many(:achievements) }
  it { should have_many(:badges).through(:achievements) }

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
  
  context "with manger role" do
    before do
      @role       = Role.make(:name => "manager")
      @permission = Permission.make(:name => "manage volunteers", :roles => [@role])
      @manager    = Volunteer.make(:role => @role)
    end
    
    it "should be a manager" do
      @manager.is_a_manager?.should be_true
    end
    
    it "should be able to manage volunteers" do
      @manager.can_manage_volunteers?.should be_true
    end
    
    context "and a volunteer" do
      before do
        @volunteer = Volunteer.make
      end
      
      it "should not be a manager" do
        @volunteer.is_a_manager?.should_not be_true
      end
    
      it "should not be able to manage volunteers" do
        @volunteer.can_manage_volunteers?.should_not be_true
      end
    end
  end
end
