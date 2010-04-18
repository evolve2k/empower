# This is a mock controller for designing event wrapup forms. Please don't
# delete.
class EventsController < ApplicationController
  def new
  end

  def show
  end
  
  private
  def set_active_tab
    @active_tab = "events"
  end
end
