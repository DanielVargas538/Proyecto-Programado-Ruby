class OrderChannel < ApplicationCable::Channel
  def subscribed
    stream_from "OrderChannel"
    send_order_data_to_channel
  end

  def unsubscribed
    # Desconexión del canal
  end

  private

  def send_order_data_to_channel
    order_data = Api::OrdersController.new.order_filtred
    ActionCable.server.broadcast("OrderChannel", { order_data: order_data })
  end
end
