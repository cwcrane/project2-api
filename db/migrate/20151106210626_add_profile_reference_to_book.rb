class AddProfileReferenceToBook < ActiveRecord::Migration
  def change
    add_reference :books, :profile, index: true, foreign_key: true
  end
end
