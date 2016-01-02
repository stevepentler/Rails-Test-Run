class ResortsController < ApplicationController
  def index
    @resort = Resort.all
  end

  def new
    @resort = Resort.new
  end

  def create
    @resort = Resort.create(resort_params)
    if @resort.save
      redirect_to @resort
    else 
      render :new
    end
  end

  def show
    @resort = Resort.find(params[:id])
  end

  private 

  def resort_params
    params.require(:resort).permit(:name, :image_path, :trail_map_path, :average_season_accumulation, :total_accumulation, :total_base, :rating, :review)
  end 
end
