class EventsController < ApplicationController
  def new
    @event = Event.new 
  end
 
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    
    @members = Member.where(:id => params[:member_team])
    @event.members << @members 

    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    
    @members = Member.where(:id => params[:member_team])
    @event.members.destroy_all
    @event.members << @members 

    if @event.update_attributes(event_params)
      redirect_to @event
    else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  private
    def event_params
      params.require(:event).permit(:title, :date, :time, :location, :description)
    end

end
