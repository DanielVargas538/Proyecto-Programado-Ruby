Client.create(first_name: "John", last_name: "Doe", phone: 123456789, user_name: "johndoe", password: "password", email: "johndoe@example.com", address: "123 Main St", locked: false)
Client.create(first_name: "Jane", last_name: "Smith", phone: 987654321, user_name: "janesmith", password: "password", email: "janesmith@example.com", address: "456 Elm St", locked: true)


Order.create(date: Date.today, state: 0, client_id: 1, dish_id: 1)


