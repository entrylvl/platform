class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts

  has_one_attached :image_data

  validates_presence_of :full_name, :description, :quote
end
