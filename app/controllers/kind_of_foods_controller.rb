class KindOfFoodsController < ApplicationController
  def index
    @kind_of_foods = KindOfFood.all
  end

  def show
    @kind_of_food = KindOfFood.find(params[:id])
  end

  def new
    @kind_of_food = KindOfFood.new
  end

  def create
    @kind_of_food = KindOfFood.new
    @kind_of_food.tags_id = params[:tags_id]
    @kind_of_food.restaurants_id = params[:restaurants_id]

    if @kind_of_food.save
      redirect_to "/kind_of_foods", :notice => "Kind of food created successfully."
    else
      render 'new'
    end
  end

  def edit
    @kind_of_food = KindOfFood.find(params[:id])
  end

  def update
    @kind_of_food = KindOfFood.find(params[:id])

    @kind_of_food.tags_id = params[:tags_id]
    @kind_of_food.restaurants_id = params[:restaurants_id]

    if @kind_of_food.save
      redirect_to "/kind_of_foods", :notice => "Kind of food updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @kind_of_food = KindOfFood.find(params[:id])

    @kind_of_food.destroy

    redirect_to "/kind_of_foods", :notice => "Kind of food deleted."
  end
end
