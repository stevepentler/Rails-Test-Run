class LiftsController < ApplicationController 
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
    @lift = Lift.find(params[:id])
  end 

  private 

  def lift_params
    params.require(:lift).permit(:name, :seats)
  end 
end