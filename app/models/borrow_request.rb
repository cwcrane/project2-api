class BorrowRequest < ActiveRecord::Base
  belongs_to :profile
  belongs_to :books
end
