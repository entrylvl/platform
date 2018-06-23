class Job < ApplicationRecord
  validates_presence_of :company, :description, :type, :location, :string, :status

  enum status: [:pending_publish, :published, :pending_removal, :removed]
end
