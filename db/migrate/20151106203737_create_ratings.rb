class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|

      t.references :book, index: true, foreign_key: true
      t.integer :rating
      t.string :review
      t.date :date

      t.timestamps null: false
    end
  end
end
