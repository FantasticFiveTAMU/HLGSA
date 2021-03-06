class EventsController < ApplicationController
before_filter :authenticate
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
    #@event.tracked = false
    if event_params[:invite] == "all"
    @members = Member.all
    @event.members << @members
    elsif event_params[:invite] == "officers"
    @members = Member.where(designation: 'officer')
    @event.members << @members
    end 

    if @event.save
			if @event.members.any?
    		@mail_list = @event.members.map(&:email)
    		EventMailer.event_invite(@mail_list, @event).deliver!
    		flash[:notice] = "Event successfully created"
    	else
    		flash[:notice] = "Event successfully created. No members invited"
    	end
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
			if event_params[:invite] == "all"
			 @event.members.destroy_all
			 @members = Member.all
			 @event.members << @members				#if all members are invited, insert all members in the join table
			elsif event_params[:invite] == "officers"
			 @event.members.destroy_all
			 @members = Member.where(designation: 'officer')
			 @event.members << @members				#if only officers are invited, insert members with officer designation only in the join table
			end 

    if @event.update_attributes(event_params)
      if @event.members.any?
      	@mail_list = @event.members.map(&:email)
      	EventMailer.event_update(@mail_list, @event).deliver!
      	flash[:notice] = "Event successfully updated"
      else
      	flash[:notice] = "Event successfully updated. No members invited"
      end
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

  def attend
    @event = Event.find(params[:event_id].to_s)
    @event.members.destroy_all			#after loading all invitees, destroy all entries so we can save only the attendees
    @member = Member.find(params[:event_member_id.to_s])
    @event.members << @member				#insert into the join table only those members with checked boxes
		@event.update_attribute :tracked, true
		flash[:notice] = "Attendance has been tracked."
		redirect_to @event
end

  private
    def event_params
      params.require(:event).permit(:title, :date, :time, :location, :description, :invite)
    end

end
