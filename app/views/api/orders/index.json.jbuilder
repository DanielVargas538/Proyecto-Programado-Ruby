json.array! @orders do |order|
    json.id order.id
    json.date order.date
    json.state order.state
    json.client do
        json.client_id order.client.id
        json.full_name "#{order.client.first_name} #{order.client.last_name}"
        json.address order.client.address
        json.phone order.client.phone
    end
    json.dish do
        json.dish_id order.dish.id
        json.name order.dish.name
        json.description order.dish.description
        json.price order.dish.price
        #json.photo order.dish.photo
        json.available order.dish.available
    end
end