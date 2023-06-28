class OrderChannel < ApplicationCable::Channel
  def subscribed
    stream_from "order_channel"
  end

  def unsubscribed
  
  end

  def order_filter(params)
    #filtered_orders = ManageOrdersController.order_filtred(params)
      
    #ActionCable.server.broadcast("order_channel", orders: filtered_orders)
  end
end
