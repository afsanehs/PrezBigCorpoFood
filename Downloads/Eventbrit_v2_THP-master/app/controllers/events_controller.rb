class EventsController < ApplicationController
  def index
    @events = Event.all 
  end

  def new
    
  end

  def show 
    @event = Event.find(params[:id])
  end
end
