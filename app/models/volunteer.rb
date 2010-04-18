class Volunteer < ActiveRecord::Base
  acts_as_authentic
  
  belongs_to :role

  has_many :achievements, :dependent => :destroy
  has_many :badges, :through => :achievements

  validates_presence_of :email
  
  before_validation_on_create :generate_password
  after_save :update_achievements
  after_create :send_welcome_email
  
  delegate :to_s, :to => :full_name
  delegate :permissions, :to => :role, :allow_nil => true
  
  named_scope :sorted, :order => "lower(given_names) ASC"
  
  def <=> (vol)
    given_names.downcase <=> vol.given_names.downcase
  end
  
  def method_missing(method_id, *args)
    if match = matches_dynamic_role_check?(method_id)
  	  tokenize_roles(match.captures.first).each do |check|
  	    return true if role && role.name.downcase == check
  	  end
  	  return false
    elsif match = matches_dynamic_perm_check?(method_id)
      return true if permissions && permissions.find_by_name(match.captures.first.gsub("_", " "))
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
