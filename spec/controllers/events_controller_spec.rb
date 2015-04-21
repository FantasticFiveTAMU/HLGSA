require 'spec_helper'
require 'rails_helper'

describe EventsController do
  
  before :each do
    @event = Event.create(title: "Event", date: "2015-01-01", time: "3:00 p.m.", location: "Location", description: "Description")

    @event2 = Event.create(title: "Event2", date: "2015-01-01", time: "3:00 p.m.", location: "Location", description: "Description")

		@events = Event.all

  end

  describe '#new' do
    it '@event should be an instance of Event' do
      expect(@event).to be_an_instance_of Event
    end
  end

  describe '#index' do
    it 'all instances should be in Event.all' do
			expect(@events).not_to be_empty
      #expect(@event && @event2).to be_in Event.all
    end
  end

  describe '#show' do
    it '@event is the same as requested' do
      expect(@event).to eql Event.find(1)
    end
  end

  describe '#create' do
    it 'should create another member and if succesful, it will have ID 3' do		
			@event3 = Event.create(title: "Event2", date: "2015-01-01", time: "3:00 p.m.", location: "Location", description: "Description")
			expect(@event3).to eql Event.find(3)
    end
  end

	describe 'update' do
		it 'should modify the parameters of an existing event' do
		
		end
	end

end
