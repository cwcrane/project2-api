class AddGoodReadsRatingToBook < ActiveRecord::Migration
  def change
    add_column :books, :good_reads_rating, :string, default: 'N/A'
    add_column :books, :good_reads_updated_at, :datetime, default: 1.day.ago
  end
end
