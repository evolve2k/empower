class Achievement < ActiveRecord::Base
  belongs_to :badge
  belongs_to :volunteer
  delegate :sql, :threshold, :to => :badge
  
private
  
  def validate
    errors.add_to_base("doesn't qualify") unless qualifies?
  end
  
  def qualifies?
    not Volunteer.first(:conditions => "volunteers.id = '#{volunteer_id}' and (#{sql} >= #{threshold})").nil?
  end
end
