class Post < ApplicationRecord
  validates :title, :body, :slug, :lead, presence: true

  extend FriendlyId

  friendly_id :title, use: :slugged

  scope :draft, -> { where(status: :draft) }
  scope :review, -> { where(status: :review) }
  scope :approved, -> { where(status: :approved) }
  scope :published, -> { where(status: :published) }

  def publish!
    self.status = :published
    save
  end
end
