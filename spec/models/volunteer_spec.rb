require 'spec_helper'

describe Volunteer do
  it { should have_many(:achievements) }
  it { should have_many(:badges).through(:achievements) }
  # FIXME: uninitialized constant Spec::Example::ExampleGroup
  # it { should have_attached_file(:photo) }
  # it { should_not validate_attachment_presence(:photo) }
  let(:volunteer) { Volunteer.make! }
  it "should be valid" do
    Volunteer.make.should be_valid
  end

  it "should require email" do
    volunteer = Volunteer.make(:email => "")
    volunteer.should_not be_valid
  end
  
  it "should generate password on create" do
    volunteer = Volunteer.make!(:password => "", :password_confirmation => "")
    volunteer.password.should_not be_blank
  end
  
  context "with manger role" do
    before do
      @role       = Role.make!(:name => "manager")
      @permission = Permission.make!(:name => "manage volunteers", :roles => [@role])
      @manager    = Volunteer.make!(:roles => [@role])
    end
    
    it "should be a manager" do
      @manager.is_a_manager?.should be_true
    end
    
    it "should be able to manage volunteers" do
      @manager.can_manage_volunteers?.should be_true
    end
    
    context "and a executive role" do
      before do
        @manager.update_attributes(:roles => [Role.make!(:name => "executive")])
      end
      
      it "should be a manager or an executive" do
        @manager.is_a_manager_or_executive?.should be_true
      end      
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
