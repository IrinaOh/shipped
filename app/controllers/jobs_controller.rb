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
    @job = Job.new(description: params[:job][:description], destination: params[:job][:destination], origin: params[:job][:origin], cost: params[:job][:cost], container_amount: params[:job][:container_amount])
    if @job.save
      redirect_to jobs_path
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end
end
