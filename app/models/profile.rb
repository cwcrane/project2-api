class Profile < ActiveRecord::Base
  belongs_to :user, autosave: true
  has_many :books
  has_many :borrow_requests
end
