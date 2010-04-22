class RootController < ApplicationController
  def index
    render :text => "Home page!", :layout => true
  end
end
