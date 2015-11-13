class BorrowRequestSerializer < ActiveModel::Serializer
  attributes :id, :book_id, :user_id, :request_date, :response_date, :response, :due_back, :book, :profile #:book_owner #:requestor_profile

  # def book_owner
  #   book.user_id.profile
  # end

end
