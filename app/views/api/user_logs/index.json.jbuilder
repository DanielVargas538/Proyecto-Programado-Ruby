json.array! @user_logs do |user_log|
    json.id user_log.id
    json.name user_log.name
    json.role user_log.role
    json.email user_log.email
    json.password user_log.password
    json.password_confirmation user_log.password_confirmation
end