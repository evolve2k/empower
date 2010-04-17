class Event < ActiveRecord::Base
  belongs_to :location
  has_one :volunteer, :through => :creator_id
  validates_presence_of :name
  validates_presence_of :location_id
  validates_presence_of :creator_id
  validates_presence_of :event_date
  validates_uniqueness_of :permalink

  before_update :set_permalink
  before_save :set_permalink

  def set_permalink
    self.permalink = (name.downcase.gsub(/[^a-z0-9]+/i, '-'))
  end

  def to_param
    permalink
  end


end
