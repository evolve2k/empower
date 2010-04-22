class AdminController < ApplicationController
  layout 'admin'
  before_filter :require_volunteer

  def index

  end
end
