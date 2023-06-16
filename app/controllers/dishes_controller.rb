class DishesController < ApplicationController
  before_action :set_dish, only: %i[ show edit update destroy ]

  def index
    @dishes = Dish.all
  end

  def show; end

  def new
    @dish = Dish.new
  end

  def edit; end

  def create
    @dish = Dish.new(dish_params)

    if @dish.save
      redirect_to dish_url(@dish), notice: t('application.create_message', model: t('activerecord.modules.dish.one')) 
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @dish.update(dish_params)
      redirect_to dish_url(@dish), notice: t('application.update_message', model: t('activerecord.modules.dish.one'))  
    else
      render :edit, status: :unprocessable_entity 
    end
  end

  def destroy
    @dish.destroy
      redirect_to dishes_url, notice: t('application.delete_message', model: t('activerecord.modules.dish.one'))  
  end

  private
    def set_dish
      @dish = Dish.find(params[:id])
    end

    def dish_params
      params.require(:dish).permit(:name, :description, :price, :photo, :available)
    end
end
