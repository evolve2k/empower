class Location < ActiveRecord::Base
  has_many :events
  
  delegate :to_s, :to => :address
end