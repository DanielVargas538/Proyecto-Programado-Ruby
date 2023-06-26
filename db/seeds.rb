Client.create(first_name: "John", last_name: "Doe", phone: 123456789, user_name: "johndoe", password: "password", email: "johndoe@example.com", address: "123 Main St", locked: false)
Client.create(first_name: "Jane", last_name: "Smith", phone: 987654321, user_name: "janesmith", password: "password", email: "janesmith@example.com", address: "456 Elm St", locked: true)
Client.create(first_name: "Sarah", last_name: "Johnson", phone: 6551234, user_name: "sarahj", password: "password", email: "sjohnson@example.com", address: "789 Oak St", locked: false)
Client.create(first_name: "Michael", last_name: "Brown", phone: 4559876, user_name: "mbrown", password: "password", email: "mbrown@example.com", address: "321 Maple Ave", locked: false)

Client.create(first_name: "Emily", last_name: "Garcia", phone: 2551, user_name: "emilyg", password: "password", email: "emilygarcia@example.com", address: "456 Pine St", locked: false)
Client.create(first_name: "Jacob", last_name: "Martinez", phone: 55571, user_name: "jacobm", password: "password", email: "jmartinez@example.com", address: "789 Maple St", locked: false)
Client.create(first_name: "Megan", last_name: "Davis", phone: 47890, user_name: "megand", password: "password", email: "mdavis@example.com", address: "123 Elm St", locked: false)
Client.create(first_name: "William", last_name: "Gonzalez", phone: 96543, user_name: "wgonzalez", password: "password", email: "willg@example.com", address: "456 Oak St", locked: false)

Client.create(first_name: "Avery", last_name: "Scott", phone: 7890, user_name: "averys", password: "password", email: "ascott@example.com", address: "789 Pine St", locked: false)
Client.create(first_name: "Ethan", last_name: "Rivera", phone: 894561, user_name: "ethanr", password: "password", email: "erivera@example.com", address: "123 Maple St", locked: false)
Client.create(first_name: "Olivia", last_name: "Lee", phone: 912567, user_name: "olivial", password: "password", email: "olee@example.com", address: "456 Oak Ave", locked: false)
Client.create(first_name: "Noah", last_name: "Lopez", phone: 876543, user_name: "noahl", password: "password", email: "nlopez@example.com", address: "789 Pine Ave", locked: false)


Order.create(date: Date.today, state: 0, client_id: 1, dish_id: 1)


