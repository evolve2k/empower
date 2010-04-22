class VolunteersController < ApplicationController
  # GET /volunteers/:id
  def show
    @volunteer = Volunteer.find(params[:id])
  end
end
