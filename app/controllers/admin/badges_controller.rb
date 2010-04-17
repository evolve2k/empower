class Admin::BadgesController < ResourceController::Base
  # before_filter :admin_required
  before_filter { flash[:error] = "TODO: admin_required" }
  layout 'admin'
  
  show.wants.html  { redirect_to admin_badges_path }
  index.wants.html { redirect_to(new_admin_badge_path) if Badge.count.zero? }
end
