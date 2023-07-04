module Api
  class OrdersController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action only: %i[show edit update destroy]
    
    def initialize
      super
      start_order_updater unless order_updater_running?
    end

    def index
      @orders = Order.all
    end

    def show
      set_order
    end

    def new
      @order = Order.new
    end

    def edit
      set_order
    end

    def create
      @order = Order.new(order_params)
      @order.date = Time.zone.now
      if @order.save
        OrderChannel.send_order_data_to_channel
      else
        render json: @order.errors, status: :unprocessable_entity 
      end
    end

    def update
      set_order
      if @order.update(state: params[:state])
        OrderChannel.send_order_data_to_channel
        render json: @order, status: :ok
      else
        render json: @order.errors, status: :unprocessable_entity
      end
    end

    def destroy
      set_order
      @order.destroy
      render 'api/orders/show', status: :ok 
    end

    def order_filtered
      @q = Order.includes(:client, :dish).ransack
      @orders = @q.result.where("state < ?", 3).order(date: :asc).limit(10)

      @orders.to_json(include: { client: { only: [:first_name, :last_name] }, dish: { only: [:name, :description], methods: [:photo_url] } })
    end

    private

    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:state, :client_id, :dish_id)
    end
   
    def start_order_updater
      Thread.new do
        Thread.current[:name] = 'order_updater'
        loop do
          begin
            orders = Order.where(state: [:on_time, :late])
            send_order_data = false
    
            ActiveRecord::Base.transaction do
              Rails.logger.info('Antes de entrar al each')
              orders.each do |order|
                Rails.logger.info(order.date)
                difference = ((Time.zone.now - order.date) / 60).to_i
                Rails.logger.info(difference)
                if difference >= 5 && difference < 10 && order.on_time?
                  order.mark_as_late
                  send_order_data = true
                  Rails.logger.info('Cambio de on_time a late')
                elsif difference >= 10
                  order.mark_as_delayed
                  send_order_data = true
                  Rails.logger.info('Cambio de late a delayed')
                end
    
                order.save if order.changed?
              end
    
              if send_order_data
                OrderChannel.send_order_data_to_channel
              end
            end
    
            ActiveRecord::Base.clear_active_connections!
          rescue StandardError => e
            Rails.logger.error("Error en el hilo del updater de órdenes: #{e.message}")
          end
    
          sleep(120)
        end
      end
    end    
    
    def order_updater_running?
      Thread.list.any? { |thread| thread[:name] == 'order_updater' }
    end
  end
end
