class FridgesController < ApplicationController

  def index
    @fridges = Fridge.all
  end

  def new
    @fridge = Fridge.new
  end

  def show
    @fridge = Fridge.find(params[:id])
  end

  def create
    fridge = Fridge.create!(fridge_params)
    redirect_to fridge_path(fridge)
  end

  def delete
  end

  def edit
  end

  def update
  end

  private

  def fridge_params
    params.require(:fridge).permit(:location, :brand, :size)
  end

end
