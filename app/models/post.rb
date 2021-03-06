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

  has_many :review_comments, class_name: 'Review::Comment'
  belongs_to :author, class_name: 'User'

  scope :new_published, -> { where(status: :published).reverse_order }

  before_create :set_header_image

  def publish!
    self.status = :published
    self.published_at = Time.current
    save!
  end

  private

  def set_header_image
    return if header_image.present?

    images = body.match(/((?:https|http)?:\/\/[\S]*.(?:jpg|jpeg|png))/)

    self.header_image = images[0] if images.present?
  end
end
