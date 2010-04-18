# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  before_filter :set_active_tab
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  filter_parameter_logging :password

    private
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

  protected
  def set_active_tab
    @active_tab = "volunteers"
  end
end
