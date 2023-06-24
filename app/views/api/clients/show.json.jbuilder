json.client do 
    json.id @client.id
    json.full_name "#{@client.first_name} #{@client.last_name}"
    json.phone @client.phone
    json.email @client.email
    json.address @client.address
    json.user_name @client.user_name
    json.password @client.password
    json.locked @client.locked
end