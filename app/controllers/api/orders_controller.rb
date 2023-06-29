module Api
  class OrdersController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action  only: %i[ show edit update destroy ]

    def index
      @orders = Order.all
    end

    def show; end

    def new
      @order = Order.new
    end

    def edit; end

    def create
      @order = Order.new(order_params)
      if @order.save
        render 'api/orders/show', status: :created
      else
        render json: @order.errors, status: :unprocessable_entity 
      end
    end

    def update
      if @order.update(order_params)
        render 'api/orders/show', status: :ok
      else
        render json: @order.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @order.destroy
      render 'api/orders/show', status: :ok 
    end

    def order_filtred
      @q = ManageOrder.includes(:client, :dish).ransack(params[:q])
      @orders = @q.result.where("state < ?", 3).order(date: :asc)

      render json: @orders.to_json(include: { client: { only: [:first_name] }, dish: { only: [:name, :description] } })
    end
    
    
    private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:date, :state, :client_id, :dish_id)
    end

  end
end