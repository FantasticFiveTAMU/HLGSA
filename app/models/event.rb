class Event < ActiveRecord::Base
  attr_accessible :date, :description, :location, :time, :title
  has_and_belongs_to_many:members
  validates :title, presence: true,
                    length: { minimum: 2 }
end
