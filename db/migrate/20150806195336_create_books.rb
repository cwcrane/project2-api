#
class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|

      t.string :title, null: false
      t.string :author
      t.references :user, index: true, foreign_key: true
      t.string :isbn
      t.string :status, default: "Available"

      t.timestamps null: false
    end
  end
end
