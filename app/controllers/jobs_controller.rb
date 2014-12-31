class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def create
    @job = Job.create(job_params)
    flash[:notice] = "Your job opening will be reviewed and posted."
    redirect_to employers_path
  end

  def show
    @job = find_job
  end

  private
  def job_params
    params.require(:job).permit(:company, :contact_name, :contact_title, :contact_city, :contact_state, :email, :phone, :city, :state, :zip_code, :description, :title, :salary, :department, :language)
  end

  def find_job
    Job.find(params[:id])
  end
end
