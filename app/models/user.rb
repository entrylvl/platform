class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :image_data, PictureUploader

  validates_presence_of :full_name, :description, :quote
end
