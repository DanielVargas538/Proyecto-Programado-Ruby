class ManageDishesController < ApplicationController
  before_action :set_manage_dish, only: %i[ show edit update destroy ]

  def index
    @manage_dishes = ManageDish.all
  end

  def show; end

  def new
    @manage_dish = ManageDish.new
  end

  def edit; end

  def create
    @manage_dish = ManageDish.new(manage_dish_params)

    if @manage_dish.save
      redirect_to manage_dish_url(@manage_dish), notice: t('application.create_message', model: t('activerecord.modules.manage_dish.one')) 
    else
      render :new, status: :unprocessable_entity 
    end
  end

  def update
      if @manage_dish.update(manage_dish_params)
        redirect_to manage_dish_url(@manage_dish), notice: t('application.update_message', model: t('activerecord.modules.manage_dish.one')) 
      else
        render :edit, status: :unprocessable_entity 
    end
  end

  def destroy
    @manage_dish.destroy
    redirect_to manage_dishes_url, notice: t('application.delete_message', model: t('activerecord.modules.manage_dish.one')) 
  end

  private
    def set_manage_dish
      @manage_dish = ManageDish.find(params[:id])
    end

    def manage_dish_params
      params.require(:manage_dish).permit(:name, :description, :price, :photo, :available)
    end
end
