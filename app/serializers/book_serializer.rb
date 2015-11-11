#
class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :isbn, :author, :status, :rating

end
