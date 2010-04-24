class VolunteerSessionsController < ApplicationController
  layout "admin"

  def new
    @volunteer_session = VolunteerSession.new
  end

  def create
    @volunteer_session = VolunteerSession.new(params[:volunteer_session])
    if @volunteer_session.save
      if current_volunteer.roles.any?
        flash[:notice] = "Successfully logged in."
        redirect_to admin_url
      else
        redirect_to volunteer_admin_dashboard_path
      end
    else
      render :action => 'new'
    end
  end

  def destroy
    @volunteer_session = VolunteerSession.find
    @volunteer_session.destroy
    flash[:notice] = "Successfully logged out."
    redirect_to root_url
  end
end
