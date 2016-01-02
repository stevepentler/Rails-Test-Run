class LiftsController < ApplicationController 
  def index
    @resort = Resort.find(params[:resort_id])
    @lifts = @resort.lifts.all
  end 

  def new
    @resort = Resort.find(params[:resort_id])
    @lift = @resort.lifts.new
  end

  def create 
    @resort = Resort.find(params[:resort_id])
    @lift = @resort.lifts.create(lift_params)

    redirect_to lift_path(@lift)
  end 

  def show
    @resort = Resort.find(params[:resort_id])
    @lifts = @resort.lifts.all
  end 

  private 

  def lift_params
    params.require(:lift).permit(:name, :seats)
  end 
end