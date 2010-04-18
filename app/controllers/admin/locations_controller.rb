class Admin::LocationsController < AdminController
  def index
  end

  private
  def set_active_tab
    @active_tab = "locations"
  end

end
