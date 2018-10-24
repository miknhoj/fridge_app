class DrinksController < ApplicationController

  def show
    @fridge = Fridge.find(params[:fridge_id])
    @drink = Drink.find(params[:id])
  end

  def new
    @fridge = Fridge.find(params[:fridge_id])
    @drink = Drink.new
  end

  def create
    @fridge = Fridge.find(params[:fridge_id])
    @fridge.drinks.create(drink_params)
    redirect_to "/fridges/#{@fridge.id}"
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def drink_params
    params.require(:drink).permit(:name, :size, :alcoholic)
  end

end
