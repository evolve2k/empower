class Admin::EventsController < AdminController

  def index
    @events = Event.find :all, :order => "id desc"
  end

  def new
    @event = Event.new
  end

  def create
    begin
      @event.save!
      flash[:notice] = 'Event was successfully created.'
      redirect_to admin_event_path(@event)
    rescue ActiveRecord::RecordInvalid => error
      flash[:error] = "There was an issue saving the event. #{error.to_s}"
      redirect_to new_admin_event_path
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
  end

end
