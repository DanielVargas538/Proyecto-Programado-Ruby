json.extract! user, :id, :name, :role, :status, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
