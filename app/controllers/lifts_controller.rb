class LiftsController < ApplicationController 
  before_action :set_resort, only: [:index, :new, :create]
  before_action :set_lift, only: [:show, :destroy, :edit, :update]
  def index
    @lifts = @resort.lifts.all
  end 

  def new
    @lift = @resort.lifts.new
  end

  def create 
    @lift = @resort.lifts.create(lift_params)
    redirect_to resort_lifts_path
  end 

  def show
  end 

  def edit
  end 

  def update
    if @lift.update(lift_params)
      redirect_to resort_lifts_path
    else 
      render :edit
    end
  end 

  def destroy 
    @lift.destroy
    redirect_to resort_lifts_path
  end 

  private 

  def lift_params
    params.require(:lift).permit(:name, :seats)
  end 

  def set_resort
    @resort = Resort.find(params[:resort_id])
  end

  def set_lift
    @lift = Lift.find(params[:id])
  end
end