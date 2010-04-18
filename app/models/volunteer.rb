class Volunteer < ActiveRecord::Base
  acts_as_authentic

  has_many :achievements, :dependent => :destroy
  has_many :badges, :through => :achievements
  has_attached_file :photo

  validates_presence_of :email

  before_validation_on_create :generate_password
  after_save :update_achievements
  after_create :send_welcome_email

  delegate :to_s, :to => :full_name

  named_scope :sorted, :order => "lower(given_names) ASC"

  def <=> (vol)
    given_names.downcase <=> vol.given_names.downcase
  end
  
  # TODO: When events is complete, change :recent_markets to a has_many association.
  # This is just a stub for the "profile" page mockup.
  def recent_markets
    [true] * 4
  end

private

  def send_welcome_email
    Mailer.deliver_welcome(self)
  end

  def generate_password
    self.password ||= randomize_password
  end

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
