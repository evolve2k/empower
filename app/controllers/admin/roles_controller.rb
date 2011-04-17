class Admin::RolesController < AdminController
  resource_controller
  
  create.wants.html { redirect_to admin_roles_path }
  update.wants.html { redirect_to admin_roles_path }
  
end