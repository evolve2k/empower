class Admin::EventsController < AdminController

  def index
    @events = Event.find :all, :order => "id desc"
  end

  def new
    @event = Event.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @volunteer }
    end
  end

  def create
    @event = Event.new(params[:event])
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
    @event = Event.find_by_permalink(params[:id])
  end

  def edit
    @event = Event.find_by_permalink(params[:id])
  end

  def update
    @event = Event.find_by_permalink(params[:id])

    if @event.update_attributes(params[:event])
      flash[:notice] = 'Event was successfully updated.'
      redirect_to admin_event_path(@event)
    else
      flash[:error] = "There was an issue saving the event."
      render :action => "edit"
    end
  end

end
