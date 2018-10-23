class FridgesController < ApplicationController

  def index
    @fridges = Fridge.all
  end

  def new
    @fridge = Fridge.new
  end

  def show
    fridge_id = params[:id]
    @fridge = Fridge.find_by(id: fridge_id)
  end

  def create
  end

  def delete
  end

  def edit
  end

  def update
  end

end
