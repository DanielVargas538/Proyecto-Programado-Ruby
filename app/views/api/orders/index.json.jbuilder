json.array! @orders do |order|
    json.id order.id
    json.date order.date
    json.state order.state
    json.client_id order.client_id
    json.dish_id order.dish_id
end