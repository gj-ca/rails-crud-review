class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
    @addresses = Address.all
    @organizers = Organizer.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    # raise
    event = Event.new(event_params)
    redirect_to(event.save ? events_path : new_event_path)
  end

  def search
  end

  private 

  def event_params
    params.require(:event).permit(:name, :time, :date, :address_id)
  end
end
