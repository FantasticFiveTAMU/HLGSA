class Member < ActiveRecord::Base
  attr_accessible :department, :designation, :email, :first_name, :last_name, :paying, :uin
  validates :uin, presence: true,
                    length: { minimum: 4 }
end
