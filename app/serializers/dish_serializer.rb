class DishSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :description, :price, :available, :created_at, :updated_at , :photo_url
end
