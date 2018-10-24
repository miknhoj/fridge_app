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
    @fridge = Fridge.find(params[:id])
    @drink = Drink.find(params[:id])
  end

  def update
    @fridge = Fridge.find(params[:fridge_id])
    @drink = Drink.find(params[:id])
    @drink.update(drink_params)
    redirect_to "/fridges/#{@fridge.id}/drinks/#{@drink.id}"
  end

  def destroy
    @fridge = Fridge.find(params[:fridge_id])
    @drink = Drink.find(params[:id])
    @drink.destroy
    redirect_to "/fridges/#{@fridge.id}"
  end

  private

  def drink_params
    params.require(:drink).permit(:name, :size, :alcoholic)
  end

end
