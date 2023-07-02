json.order do 
    json.id @order.id
    json.date @order.date
    json.state @order.state
    json.client @order.client_id
    json.dish @order.dish_id
end
