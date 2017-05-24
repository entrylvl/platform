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
    self.published_at = Time.current
    save
  end

  def parsed_body(&block)
    @parsed_body ||= ConvertMarkdownService.new.convert_post(self, &block)
  end
end
