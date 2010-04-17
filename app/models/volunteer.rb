class Volunteer < ActiveRecord::Base
  validates_presence_of :email

  acts_as_authentic
end
