class BorrowRequest < ActiveRecord::Base
  belongs_to :profile
  belongs_to :book
end
