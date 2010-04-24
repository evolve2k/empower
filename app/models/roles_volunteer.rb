class RolesVolunteer < ActiveRecord::Base
  belongs_to :role
  belongs_to :volunteer
end