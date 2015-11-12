class BorrowRequestSerializer < ActiveModel::Serializer
  attributes :id, :book_id, :user_id, :request_date, :response_date, :response, :due_back, :book, :book_owner

  def book_owner
    object.book.user.profile
  end



end
