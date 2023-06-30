class OrderChannel < ApplicationCable::Channel
  def subscribed
    stream_from "OrderChannel"
    Rails.logger.info('Entre subscribed')
    send_order_data_to_channel
  end

  def unsubscribed
    # Desconexión del canal
  end

  private

  def send_order_data_to_channel
    Rails.logger.info('Hola')
    order_data = Api::OrdersController.new.order_filtred2
    Rails.logger.info('Hola x3')
    ActionCable.server.broadcast("OrderChannel", { order_data: order_data })
  end
end
