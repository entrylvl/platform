class Post < ApplicationRecord
  validates :title, :body, :slug, :lead, presence: true

  extend FriendlyId

  friendly_id :title, use: :slugged

  enum status: {
    draft: 'draft',
    review: 'review',
    approved: 'approved',
    published: 'published'
  }

  scope :draft, -> { where(status: :draft) }
  scope :review, -> { where(status: :review) }
  scope :approved, -> { where(status: :approved) }
  scope :published, -> { where(status: :published) }
  scope :new_published, -> { where(status: :published).reverse_order }

  def publish!
    self.status = :published
    self.published_at = Time.current
    save!
  end
end
