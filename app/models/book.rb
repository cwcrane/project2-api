#
class Book < ActiveRecord::Base
  belongs_to :profile
  has_many :requests
end
