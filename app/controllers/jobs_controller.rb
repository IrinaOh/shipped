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
    @boat = Boat.find(params[:boat_id])
    @job = @boat.jobs.new(job_params)
    # if @job.save
    #   @boat.jobs <<  @job
    #   redirect_to jobs_path @job
    # else
    #   render 'new'
    # end
  end

  def update
  end

  def destroy
  end

  private
  def job_params
    params.require(:job).permit(:description, :destination, :cost, :container_amount)
  end
end
