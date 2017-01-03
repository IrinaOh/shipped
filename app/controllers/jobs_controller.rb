class JobsController < ApplicationController
  def index
    @jobs = Job.all
    @user = current_user
    @boats = @user.boats
  end

  def new
    @job = Job.new
    @boat = Boat.find(params[:boat_id])
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
    if @job.save
      @boat.jobs <<  @job
      redirect_to jobs_path @job
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  def boatJobs
    puts "THESE ARE MY PARAMS: #{params.inspect}"
    @job = Job.find(params[:job_id])
    params[:boatjobs].each do |boat_id|
      @boat = Boat.find(boat_id)
      respond_to do |format|
        if @job.boats << @boat
          format.js #send back to boatjobs.js.erb page with js
        else
          format.json {render :json => {:error => "@job.errors.full_messages.to_sentence"}, :status => 422}
        end
      end
    end
  end

  private
  def job_params
    params.require(:job).permit(:description, :destination, :cost, :container_amount)
  end
end
