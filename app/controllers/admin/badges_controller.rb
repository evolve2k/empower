class Admin::BadgesController < ResourceController::Base
  before_filter :admin_required
  before_filter :require_volunteer
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

  def require_volunteer
    unless current_volunteer
      redirect_to volunteer_login_path
      return false
    end
  end

  def current_volunteer_session
    return @current_volunteer_session if defined?(@current_volunteer_session)
    @current_volunteer_session = VolunteerSession.find
  end

  helper_method :logged_in?
  def logged_in?
    current_volunteer
  end

  def current_volunteer
    return @current_volunteer if defined?(@current_volunteer)
    @current_volunteer = current_volunteer_session && current_volunteer_session.record
  end
end
