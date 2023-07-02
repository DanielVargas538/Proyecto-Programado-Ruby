require 'rufus-scheduler'

module Api
  class OrdersController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action  only: %i[ show edit update destroy ]

    def initialize
      super
      start_order_status_updater
    end
    
    def index
      @orders = Order.all
    end

    def show
      # Implementación del método show
    end

    def new
      @order = Order.new
    end

    def edit
      # Implementación del método edit
    end

    def create
      @order = Order.new(order_params)
      if @order.save
        #OrderChannel.send_order_data_to_channel
        render render 'api/orders/index'
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
    
    private

    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:date, :client_id, :dish_id)
    end

    def start_order_status_updater
      scheduler = Rufus::Scheduler.new

      scheduler.every '1m' do
        change_order_status
        Rails.logger.info('Se cambió el estado de las órdenes')
      end
    end

    def change_order_status
      orders = Order.where(state: [:on_time, :late, :delayed])
      orders.each do |order|
        Rails.logger.info('Se inicio el cambió el estado de las órdenes')
        Rails.logger.info(order.state)
        if order.on_time?
          order.mark_as_late
        elsif order.late?
          order.mark_as_delayed
        elsif order.delayed?
          order.mark_as_delivered
        end
        Rails.logger.info('Se finalizo el cambió el estado de las órdenes')
        Rails.logger.info(order.state)
        order.save
      end
    end
  end
end
