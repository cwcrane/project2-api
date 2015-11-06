class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|

      t.references :user, index: true, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :address_street
      t.string :city
      t.integer :zip
      t.integer :phone
      t.timestamps null: false
    end
  end
end
