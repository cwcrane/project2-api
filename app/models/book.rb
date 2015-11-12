#
class Book < ActiveRecord::Base
  belongs_to :user
  has_one :profile, through: :user
  has_many :borrow_requests
  has_one :rating
end
