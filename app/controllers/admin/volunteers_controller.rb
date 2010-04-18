class Admin::VolunteersController < AdminController
  resource_controller
  
  layout "admin"
  
  private
  
    def collection
      @collection ||= Volunteer.sorted
    end

    def set_active_tab
      @active_tab = "volunteers"
    end
end

