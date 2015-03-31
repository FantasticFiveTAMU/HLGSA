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

    if event_params[:invite] == "all"
    @members = Member.all
    @event.members << @members
    elsif event_params[:invite] == "officers"
    @members = Member.where(designation: 'officer')
    @event.members << @members
    end 

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

    @event.members.destroy_all
    
    if event_params[:invite] == "all"
    @members = Member.all
    @event.members << @members
    elsif event_params[:invite] == "officers"
    @members = Member.where(designation: 'officer')
    @event.members << @members
    end 

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

  def track
    @event = Event.find(params[:id])
  end

  private
    def event_params
      params.require(:event).permit(:title, :date, :time, :location, :description, :invite)
    end

end
