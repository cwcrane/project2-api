class BorrowRequestSerializer < ActiveModel::Serializer
  attributes :id, :book_id, :user_id, :request_date, :response_date, :response, :due_back, :book, :profile#, :requestor_profile #:book_owner

  # def requestor_profile
  #   object.user_id.profile
  # end

end
