json.extract! dish, :id, :name, :description, :price, :photo, :available, :created_at, :updated_at
json.url dish_url(dish, format: :json)
