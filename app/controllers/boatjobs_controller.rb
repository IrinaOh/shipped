class BoatjobsController < ApplicationController
  def index
    
  end

  def new
    @boatandjob = Boatandjob.create(boat_id: params[:boat_id], job_id: params[:job_id])
    redirect_to jobs_path @job
  end

  def create
    @job = Job.find(params[:job_id])
    boats = params[:boat]
    boats.each do |key, boat_id| 
       boat = Boat.find(boat_id)
       @job.boats << boat
    end
    respond_to do |format|
      format.js #stay on the same page
    end
  end

  def newjobtoboat
    @jobtoboat = Jobtoboat.create(job_id: params[:job_id], boat_id: params[:boat_id])
    redirect_to boats_path @boat
  end

  def createjobtoboat
    @boat = Boat.find(params[:boat_id])
    jobs = params[:job]
    jobs.each do |key, job_id| 
       job = Job.find(job_id)
       @boat.jobs << job
    end
    respond_to do |format|
      format.js #stay on the same page
    end
  end

  def show
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
