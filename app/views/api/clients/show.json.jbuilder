json.client do 
    json.id @client.id
    json.first_name @client.first_name
    json.last_name @client.last_name
    json.province @client.province
    json.canton @client.canton
    json.district @client.district
    json.street @client.street
    json.phone @client.phone
    json.email @client.email
    json.password @client.password
end