json.array! @clients do |client| 
    json.id client.id
    json.full_name "#{client.first_name} #{client.last_name}"
    json.phone client.phone
    json.email client.email
    json.address client.address
end