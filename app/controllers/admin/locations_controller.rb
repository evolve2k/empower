class Admin::LocationsController < AdminController
  resource_controller
  
  create.wants.html { redirect_to admin_locations_path }
  update.wants.html { redirect_to admin_locations_path }
  
  private
  
  def set_active_tab
    @active_tab = "locations"
  end

end
