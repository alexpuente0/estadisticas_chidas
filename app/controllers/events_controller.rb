class EventsController < ApplicationController


  # GET /events or /events.json
  def index
    @events = Event.all
  end

  # GET /events/1 or /events/1.json
  def show
    @event = Event.find(params[:id])
    @checkins = @event.checkins
    @users = @event.users
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # POST /events or /events.json
  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to events_path, notice: 'Event was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1 or /events/1.json
  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  private

  # Only allow a list of trusted parameters through.
  def event_params
    params.require(:event).permit(:id, :name, :date, :location, :image)
  end
end
