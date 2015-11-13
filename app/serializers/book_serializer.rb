#
class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :isbn, :author, :status, :rating, :borrow_requests, :profile, :average_rating

  def average_rating
    GoodReadApi.new(object).average_rating
  end

end
