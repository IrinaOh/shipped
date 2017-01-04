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
    # respond_to do |format|
    #   format.js #stay on the same page
  end

  def show
    
  end

  def create
    @boat = current_user.boats.new(boat_params)
    if @boat.save
      redirect_to boats_path
    else
      render 'new'
    end
  end

  def update
    @boat = Boat.find(params[:id]).update_attributes(boat_params)
    redirect_to boats_path
  end

  def destroy
  end

  private
  def boat_params
    params.require(:boat).permit(:user_id, :name, :location, :container_amount, :avatar)   
  end
end
