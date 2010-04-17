class Badge < ActiveRecord::Base
  validates_presence_of :name, :sql, :threshold
  validates_uniqueness_of :name
  delegate :to_s, :to => :name
end
