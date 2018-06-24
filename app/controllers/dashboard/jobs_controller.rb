class Dashboard::JobsController < Dashboard::BaseController
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new(status: :published)
  end

  def edit
    @job = Job.find(params.require(:id))
  end

  def create
    @job = Job.new(job_params)

    if @job.save
      redirect_to dashboard_jobs_path
    else
      render :new
    end
  end

  def update
    @job = Job.find(params.require(:id))

    if @job.update(job_params)
      redirect_to dashboard_jobs_path
    else
      render :edit
    end
  end

  private

  def job_params
    params.require(:job).permit(
      :company, :description, :kind, :location, :link, :status
    )
  end
end
