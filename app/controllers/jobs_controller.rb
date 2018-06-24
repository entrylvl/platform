class JobsController < ApplicationController
  def index
    @jobs = Job.where(status: [:published, :pending_removal])
  end
end
