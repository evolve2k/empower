class Admin::VolunteersController < AdminController
  resource_controller
  
  create.wants.html { redirect_to admin_volunteers_path }
  
  layout "admin"
  
  private
  
    def collection
      @collection ||= Volunteer.sorted
    end

    def set_active_tab
      @active_tab = "volunteers"
    end
end

