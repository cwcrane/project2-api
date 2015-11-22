class BorrowRequestSerializer < ActiveModel::Serializer
  attributes :id, :book_id, :user_id, :request_date, :response_date, :response, :due_back, :book, :profile#, :book_owner

  def book
    object.book
  end

  # def book_owner
  #   Profile.find_by(user_id: object.book.user_id)
  # end

end
