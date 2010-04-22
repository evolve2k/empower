class Permission < ActiveRecord::Base
  has_many :role_permissions
  has_many :roles, :through => :role_permissions
  
  delegate :to_s, :to => :name
end