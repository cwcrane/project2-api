class AddColumnsToBook < ActiveRecord::Migration
  def change
    add_column :books, :author, :string
    add_column :books, :status, :string, default: "Available"
  end
end
