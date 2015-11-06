class CreateBorrowRequests < ActiveRecord::Migration
  def change
    create_table :borrow_requests do |t|
      t.references :user, index: true, foreign_key: true
      t.references :book, index: true, foreign_key: true
      t.date :request_date
      t.date :response_date
      t.boolean :response
      t.date :due_back

      t.timestamps null: false
    end
  end
end
