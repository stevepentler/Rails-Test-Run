class LiftsController < ApplicationController 
  before_action :set_resort, only: [:index, :new, :create]
  def index
    @lifts = @resort.lifts.all
  end 

  def new
    @lift = @resort.lifts.new
  end

  def create 
    @lift = @resort.lifts.create(lift_params)
    redirect_to lift_path(@lift)
  end 

  def show
    @lift = Lift.find(params[:id])
  end 

  private 

  def lift_params
    params.require(:lift).permit(:name, :seats)
  end 

  def set_resort
    @resort = Resort.find(params[:resort_id])
  end
end