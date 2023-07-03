require_relative '../models/dish'
class ManageDishesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_manage_dish, only: %i[ show edit update destroy ]
  
  def index
    @manage_dishes = Dish.all
  end

  def show; end

  def new
    @manage_dish = Dish.new
  end

  def edit; end

  def create
    @manage_dish = Dish.new(manage_dish_params)
    if @manage_dish.save
      redirect_to manage_dishes_path, notice: t('application.create_message', model: t('activerecord.modules.manage_dish.one')) 
    else
      render :new, status: :unprocessable_entity 
    end
  end

  def update
      if @manage_dish.update(manage_dish_params)
        Rails.logger.info('Hola')
        redirect_to manage_dishes_path, notice: t('application.update_message', model: t('activerecord.modules.manage_dish.one')) 
      else
        render :edit, status: :unprocessable_entity 
      end
  end

  def destroy
    @manage_dish.destroy
    redirect_to manage_dishes_path, notice: t('application.delete_message', model: t('activerecord.modules.manage_dish.one')) 
  end

  private
    def set_manage_dish
      @manage_dish = Dish.find(params[:id])
    end

    def manage_dish_params
      params.require(:dish).permit(:name, :description, :price, :photo, :available)
    end
end
