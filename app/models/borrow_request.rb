class BorrowRequest < ActiveRecord::Base
  belongs_to :user
  belongs_to :book
  has_one :user, through: :book
end
