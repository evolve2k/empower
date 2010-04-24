class Role < ActiveRecord::Base
  has_many :role_permissions
  has_many :permissions, :through => :role_permissions
  has_many :roles_volunteers
  has_many :volunteers, :through => :roles_volunteers
  
  delegate :to_s, :to => :name
end