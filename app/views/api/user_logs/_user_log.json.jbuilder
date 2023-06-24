json.extract! user_log, :id,:name, :role, :email, :password , :password_confirmation :created_at, :updated_at
json.url user_log_url(user_log, format: :json)
