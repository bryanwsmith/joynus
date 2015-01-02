class JobsController < ApplicationController
  before_filter :authorize, only: [:approve, :unapproved_jobs]

  def index
    @jobs = Job.where.not(date_approved: nil)
  end

  def create
    @job = Job.create(job_params)
    flash[:notice] = "Your job opening will be reviewed and posted."
    redirect_to employers_path
  end

  def show
    @job = find_job
  end

  def approve
    Job.where(id: params[:job_ids]).update_all(date_approved: Date.today)
    redirect_to jobs_path
  end

  def unapproved_jobs
    @unapproved_jobs = Job.where(date_approved: nil)
  end

  private
  def job_params
    params.require(:job).permit(:company, :contact_name, :contact_title, :contact_city, :contact_state, :email, :phone, :city, :state, :zip_code, :description, :title, :salary, :department, :language)
  end

  def find_job
    Job.find(params[:id])
  end
end
