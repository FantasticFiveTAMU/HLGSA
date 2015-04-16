class Event < ActiveRecord::Base
  attr_accessible :date, :description, :location, :time, :title, :invite, :tracked
  has_and_belongs_to_many:members
  validates :title, presence: true,
                    length: { minimum: 2 }
  validates :date, presence: true
  validates :time, presence: true
  validates :location, presence: true
  validates :description, presence: true
end
