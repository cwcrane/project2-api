#
class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :isbn, :author, :status, :rating, :borrow_requests, :profile, :average_rating, :book_owner

  def book_owner
    object.user.profile
  end

  def average_rating
    object.good_reads_rating

    # GoodReadApi.new(object).average_rating
  end

end
