json.array! @orders do |order|
    json.id order.id
    json.date order.date
    json.state order.state
    json.client do
        json.full_name "#{order.client.first_name} #{order.client.last_name}"
        json.address order.client.address
        json.phone order.client.phone
    end
end