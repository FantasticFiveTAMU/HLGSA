class Member < ActiveRecord::Base
  attr_accessible :department, :email, :first_name, :last_name, :paying, :designation, :uin
end
