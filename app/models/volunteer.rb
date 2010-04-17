class Volunteer < ActiveRecord::Base
  acts_as_authentic

  has_many :achievements, :dependent => :destroy
  has_many :badges, :through => :achievements

  validates_presence_of :email
  
  after_save :update_achievements
  
  delegate :to_s, :to => :full_name
  
private

  def full_name
    [given_names, surname].join(" ")
  end
  
  def update_achievements
    unachieved_badges.each { |badge| achievements.create(:badge => badge) }
  end
  
  def unachieved_badges
    Badge.all - badges
  end
end
