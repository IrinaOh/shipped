class BoatsController < ApplicationController
  def index
    @boats = Boat.all
    @user = current_user
  end

  def new
    @boat = Boat.new
  end

  def edit
    @boat = Boat.find(params[:id])
    respond_to do |format|
      format.js #stay on the same page
    end
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def create
    @boat = Boat.new(user_id: current_user.id, name: params[:boat][:name], location: params[:boat][:location], container_amount: params[:boat][:container_amount])
    if @boat.save
      redirect_to boats_path
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end
end
