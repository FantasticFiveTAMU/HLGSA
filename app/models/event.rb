class Event < ActiveRecord::Base
  attr_accessible :date, :description, :location, :time, :title
  validates :title, presence: true,
                    length: { minimum: 2 }
end
