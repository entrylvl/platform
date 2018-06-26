class Review::Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates_presence_of :user, :post, :body
end
