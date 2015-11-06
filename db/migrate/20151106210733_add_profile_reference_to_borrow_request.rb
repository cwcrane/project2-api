class AddProfileReferenceToBorrowRequest < ActiveRecord::Migration
  def change
    add_reference :borrow_requests, :profile, index: true, foreign_key: true
  end
end
