class Admin::RegionsController < AdminController
  def index
  end

  private
  def set_active_tab
    @active_tab = "region"
  end
end
