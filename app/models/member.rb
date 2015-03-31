class Member < ActiveRecord::Base
attr_accessible :department, :designation, :email, :first_name, :last_name, :paying, :uin
  has_and_belongs_to_many:events
  validates :uin, presence: true,
                    length: { minimum: 4 }
end
