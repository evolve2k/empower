class Admin::RolesController < AdminController
  resource_controller
  
  create.wants.html { redirect_to admin_roles_path }
  update.wants.html { redirect_to admin_roles_path }

private
  def set_active_tab
    @active_tab = "roles"
  end
end