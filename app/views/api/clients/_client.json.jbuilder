json.extract! client, :id, :first_name, :last_name, :phone, :user_name, :password, :email, :address, :locked, :created_at, :updated_at
json.url client_url(client, format: :json)
