#
class Book < ActiveRecord::Base
  belongs_to :profile
  has_many :borrow_requests
  has_one :rating
end
