class Member < ActiveRecord::Base
attr_accessible :department, :designation, :email, :first_name, :last_name, :paying, :status, :uin
  has_and_belongs_to_many:events
#  validates :uin, presence: true,
#                    length: { is: 4 }
#  validates :first_name, presence: true
#  validates :last_name, presence: true
#  validates :email, presence: true
#  validates :department, presence: true,
#                    length: { is: 4 }
end
