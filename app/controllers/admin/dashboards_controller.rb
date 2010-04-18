class Admin::DashboardsController < ApplicationController
  layout 'admin'
  class Event < Struct.new(:title, :sales, :day, :volunteers); end;

  def volunteer
    @events = [
      Event.new("Bondi Market", 1500, Date.today, %w(xavier xavier-2)),
      Event.new("Rose St Artist Market", 950, Date.yesterday, %w(xavier-2)),
      Event.new("Paddington Market", 2310, Date.today - 7.days, %w(chris xavier-3 xavier))
    ]
  end
end
