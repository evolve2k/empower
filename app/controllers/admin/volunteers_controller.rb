class Admin::VolunteersController < AdminController
  resource_controller
  
  create.wants.html { redirect_to admin_volunteers_path }
  
  layout "admin"
end

