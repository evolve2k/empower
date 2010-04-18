# This is a mock controller for designing event wrapup forms. Please don't
# delete coz I'm still working on them.
class EventsController < ApplicationController
  
  private
  def set_active_tab
    @active_tab = "events"
    
  class Event < Struct.new(:title, :sales, :day, :volunteers); end;

  def new
  end

  def show
  end

  def volunteer
    @events = [
      Event.new("Bondi Market", 1500, Date.today, %w(xavier xavier-2)),
      Event.new("Rose St Artist Market", 950, Date.yesterday, %w(xavier-2)),
      Event.new("Paddington Market", 2310, Date.today - 7.days, %w(chris xavier-3 xavier))
    ]
>>>>>>> 4906ac73c745e7e9afff80f2b841dc5754d8b472:app/controllers/events_controller.rb
  end
end
