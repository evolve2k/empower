class Admin::VolunteersController < AdminController
  
  layout "admin"

  def index
    @volunteers = Volunteer.all
  end

  def new
    @volunteer = Volunteer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @volunteer }
    end
  end

end

