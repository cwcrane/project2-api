class RatingSerializer < ActiveModel::Serializer
  attributes :id, :book_id, :rating, :review, :date
end
