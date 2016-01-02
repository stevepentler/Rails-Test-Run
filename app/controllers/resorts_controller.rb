class ResortsController < ApplicationController
  before_action :set_resort, only: [:show, :edit, :update, :destroy]
  def index
    @resorts = Resort.all
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
  end

  def edit
  end

  def update
    if @resort.update(resort_params)
     redirect_to @resort
    else
      render :edit
    end
  end

  def destroy
    @resort.destroy
    redirect_to resorts_path
  end

  private 

  def resort_params
    params.require(:resort).permit(:name, :image_path, :trail_map_path, :average_season_accumulation, :total_accumulation, :total_base, :rating, :review)
  end 

  def set_resort
    @resort = Resort.find(params[:id])
  end
end
