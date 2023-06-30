module Api
  class OrdersController < ApplicationController
    skip_before_action :verify_authenticity_token
<<<<<<< HEAD
    before_action only: %i[ show edit update destroy ]

=======
    before_action  only: %i[ show edit update destroy ]
    
>>>>>>> feature/KevinTest
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
        OrderChannel.send_order_data_to_channel
      else
        render json: @order.errors, status: :unprocessable_entity 
      end
    end

    def update
      set_order();
      if @order.update(state: params[:state])
        render json: @order, status: :ok
      else
        render json: @order.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @order.destroy
      render 'api/orders/show', status: :ok 
    end

    def order_filtred
<<<<<<< HEAD
      @q = Order.includes(:client, :dish).ransack(params[:q])
      @orders = @q.result.where("state < ?", 3).order(date: :asc)

      render 'api/orders/index'
      #render json: @orders.to_json(include: { client: { only: [:first_name] }, dish: { only: [:name, :description] } })
    end

=======
      @q = Order.includes(:client, :dish).ransack
      @orders = @q.result.where("state < ?", 3).order(date: :asc)
      Rails.logger.info("Entre order filtred")
      response json: @orders.to_json(include: { client: { only: [:first_name] }, dish: { only: [:name, :description] } })
    end
       
    def order_filtred2
      @q = Order.includes(:client, :dish).ransack
      @orders = @q.result.where("state < ?", 3).order(date: :asc)

      Rails.logger.info('Hola x2')

      @orders.to_json(include: { client: { only: [:first_name] }, dish: { only: [:name, :description] } })
    end
    
>>>>>>> feature/KevinTest
    private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:date, :state, :client_id, :dish_id)
    end

  end
end