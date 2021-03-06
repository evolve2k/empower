class Volunteer < ActiveRecord::Base
  acts_as_authentic
  
  has_many :roles_volunteers
  has_many :roles, :through => :roles_volunteers

  has_many :achievements, :dependent => :destroy
  has_many :badges, :through => :achievements
  has_attached_file :photo

  validates_presence_of :email

  before_validation_on_create :generate_password
  after_save :update_achievements
  after_create :send_welcome_email

  delegate :to_s, :to => :full_name
  def permissions
    roles.map(&:permissions).flatten
  end
  
  named_scope :sorted, :order => "lower(given_names) ASC"

  def <=> (vol)
    given_names.downcase <=> vol.given_names.downcase
  end
  
  # TODO: When events is complete, change :recent_markets to a has_many association.
  # This is just a stub for the "profile" page mockup.
  def recent_markets
    [true] * 4
  end

  def method_missing(method_id, *args)
    if match = matches_dynamic_role_check?(method_id)
  	  tokenize_roles(match.captures.first).each do |check|
  	    return true if roles.map(&:name).map(&:downcase).include? check
  	  end
  	  return false
    elsif match = matches_dynamic_perm_check?(method_id)
      return true if permissions && permissions.map(&:name).include?(match.captures.first.gsub("_", " "))
  	else
  	  super
  	end
  end
  
private

  def matches_dynamic_role_check?(method_id)
    /^is_an?_([a-zA-Z]\w*)\?$/.match(method_id.to_s)
  end
  
  def matches_dynamic_perm_check?(method_id)
     /^can_([a-zA-Z]\w*)\?$/.match(method_id.to_s)
  end
  
  def tokenize_roles(string_to_split)
    string_to_split.split(/_or_/)
  end

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
