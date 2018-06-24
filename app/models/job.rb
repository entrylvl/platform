class Job < ApplicationRecord
  validates_presence_of :company, :description, :type, :location, :link, :status

  enum status: [:pending_publish, :published, :pending_removal, :removed]
end
