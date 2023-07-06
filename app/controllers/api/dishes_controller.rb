module Api
  class DishesController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_dish, only: %i[ show ]

    def index
      @dishes = Dish.all
    end

    def show; end

    def new
      @dish = Dish.new
    end

    def edit; end

    def dishes_for_name
      @dishes = Dish.ransack(name_cont_any: params[:name], available_eq: true).result
      if @dishes.empty?
        @dishes = Dish.ransack(available_eq: true).result
      end
      render json: @dishes.map { |dish| dish.as_json(only: [:id, :description, :name, :price], methods: [:photo_url]) }
    end
    
    private
      def set_dish
        @dish = Dish.find(params[:id])
      end

  end
end