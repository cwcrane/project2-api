#
class User < ActiveRecord::Base
  include Authentication

    has_one :profile, autosave: true
    has_many :books
    has_many :borrow_requests
    #has_many :borrow_requests, through: :books
    has_many :ratings, through: :books

end
