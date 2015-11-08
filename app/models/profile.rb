class Profile < ActiveRecord::Base
  belongs_to :user, autosave: true
  has_many :books, through: :user
  has_many :borrow_requests, through: :user
end
