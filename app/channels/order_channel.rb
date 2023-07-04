class OrderChannel < ApplicationCable::Channel
  def self.send_order_data_to_channel
    order_data = Api::OrdersController.new.order_filtered
    ActionCable.server.broadcast("OrderChannel", { order_data: order_data })
  end

  def subscribed
    stream_from "OrderChannel"
    self.class.send_order_data_to_channel
  end

  def unsubscribed

  end
end