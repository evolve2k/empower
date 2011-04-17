class Admin::BadgesController < ResourceController::Base
  before_filter :admin_required
  layout 'admin'
  
  show.wants.html  { redirect_to admin_badges_path }
  index.wants.html { redirect_to(new_admin_badge_path) if Badge.count.zero? }



private
  
  def admin_required
    flash[:error] = "TODO: admin_required"
  end
  
  def set_active_tab
    @active_tab = "badges"
  end
end
