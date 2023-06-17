json.array! @clients do |client| 
    json.id client.id
    json.full_name "#{client.first_name} #{client.last_name}"
    json.email client.email
    json.address client.address
    json.user_name client.user_name
    json.password client.password
end