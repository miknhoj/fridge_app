class FoodsController < ApplicationController
  def index
    @fridge = Fridge.find(params[:fridge_id])
    @foods = @fridge.foods
  end

  def new
    @food = food.new
  end

  def show
    @fridge = Fridge.find(params[:id])
    @food = Food.find(params[:id])
  end

  def create
    fridge = Fridge.create!(fridge_params)
    redirect_to fridge_path(fridge)
  end

  def destroy
    @fridge =  Fridge.find(params[:id])
    @fridge.destroy
    redirect_to "/fridges"
  end

  def edit
    @fridge = Fridge.find(params[:id])
  end

  def update
    @fridge = Fridge.find(params[:id])
    @fridge.update(fridge_params)
    redirect_to "/fridges/#{@fridge.id}"
  end

  private

  def food_params
    params.require(:food).permit(:name, :weight, :vegan, :date_added)
  end

end
