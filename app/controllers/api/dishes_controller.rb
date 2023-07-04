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

    def dishes_availables
      @q = Dish.ransack
      @manage_dishes = @q.result.where(available: true)

      render json: @manage_dishes.to_json(only: [:description, :name], methods: [:photo_url])
    end

    private
      def set_dish
        @dish = Dish.find(params[:id])
      end

  end
end