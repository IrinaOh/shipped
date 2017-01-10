class JobsController < ApplicationController
  def index
    @jobs = Job.all
    @user = current_user
    @boats = @user.boats
  end

  def new
    @job = Job.new
  end

  def edit
  end

  def show
    @job = Job.find(params[:id])
  end

  def create
    user = current_user
    @job = Job.new(job_params)
    if @job.save
      redirect_to jobs_path @job
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  private
  def job_params
    params.require(:job).permit(:description, :destination, :origin, :cost, :container_amount)
  end
end
