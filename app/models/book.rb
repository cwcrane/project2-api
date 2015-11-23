#
class Book < ActiveRecord::Base
  belongs_to :user
  has_one :profile, through: :user
  has_many :borrow_requests, dependent: :destroy
  has_one :rating, dependent: :destroy

  after_find :check_good_reads_rating_age #gets run after every time an activerecord model is retrieved from database.

  def update_good_reads_rating
    update_attributes good_reads_rating: get_good_reads_rating, good_reads_updated_at: Time.now
  end

  def get_good_reads_rating
    GoodReadApi.new(self).average_rating
  end

  def check_good_reads_rating_age
    update_good_reads_rating if good_reads_updated_at < 1.day.ago
  end

end
