Client.create!(
    email: 'john.doe@gmail.com', password: '123456' , first_name: 'John', last_name: 'Doe',phone: 1234590, province: 'California', canton: 'Los Angeles', district: 'Downtown', street: 'Main Street', locked: false
)
  
Client.create!(
    email: 'jane.smith@gmail.com', password: '123456' , first_name: 'Jane', last_name: 'Smith', phone: 9873210, province: 'New York', canton: 'Manhattan', district: 'Midtown', street: 'Park Avenue', locked: true
)
  
Client.create!(
    email: 'michael.williams@gmail.com', password: '123456' , first_name: 'Michael', last_name: 'Williams', phone: 1525454, province: 'Texas', canton: 'Austin', district: 'Downtown', street: 'Congress Avenue', locked: false
)
  
Client.create!(
    email: 'emma.wilson@gmail.com', password: '123456' , first_name: 'Emma', last_name: 'Wilson', phone: 534567, province: 'California', canton: 'San Francisco', district: 'Mission District', street: 'Valencia Street', locked: false
)
  
Client.create!(
    email: 'david.johnson@gmail.com', password: '123456' , first_name: 'David', last_name: 'Johnson', phone: 777943, province: 'Florida', canton: 'Miami', district: 'South Beach', street: 'Ocean Drive', locked: true
)
  
Client.create!(
    email: 'olivia.brown@gmail.com', password: '123456' , first_name: 'Olivia', last_name: 'Brown', phone: 8854321, province: 'New York', canton: 'Brooklyn', district: 'Williamsburg', street: 'Bedford Avenue', locked: false
)
  
Client.create!(
    email: 'sophia.jackson@gmail.com', password: '123456' , first_name: 'Sophia', last_name: 'Jackson', phone: 5596543, province: 'Texas', canton: 'Houston', district: 'Montrose', street: 'Westheimer Road', locked: false
  )
  
Client.create!( email: 'noah.thompson@gmail.com', password: '123456',password_confirmation: '123456', first_name: 'Noah', last_name: 'Thompson', phone: 9994567, province: 'Illinois', canton: 'Chicago', district: 'Lincoln Park', street: 'Clark Street', locked: true
)

Client.create!(
    email: 'isabella.white@gmail.com', password: '123456' , first_name: 'Isabella', last_name: 'White', phone: 775521, province: 'Florida', canton: 'Orlando', district: 'Downtown', street: 'Orange Avenue', locked: false
)

Client.create!(
    email: 'mia.moore@gmail.com', password: '123456' , first_name: 'Mia', last_name: 'Moore', phone: 555122, province: 'California', canton: 'San Diego', district: 'Gaslamp Quarter', street: 'Fifth Avenue', locked: false
)
  
Client.create!(
    email: 'ethan.davis@gmail.com', password: '123456' , first_name: 'Ethan', last_name: 'Davis', phone: 888000, province: 'Washington', canton: 'Seattle', district: 'Belltown', street: 'First Avenue', locked: true
)

Client.create!(
    email: 'ava.harris@gmail.com', password: '123456' , first_name: 'Ava', last_name: 'Harris', phone: 4445666, province: 'Colorado', canton: 'Denver', district: 'LoDo', street: '16th Street', locked: false
)
  
Dish.create!(
    name: 'Arroz cantones', description: 'Plato elaborado con el mejor arroz de la zona, incluye camarones, pollo y otras delecias de las casa', price: 2500, available: true,
    photo: {
      io: File.open(Rails.root.join('app/assets/images/orders/cantones.jpg')),
      filename: 'cantones.jpg',
      content_type: 'image/jpg'
    }
)

Dish.create!(
    name: 'Gordon blue', description: 'Un plato clásico que combina un filete de carne empanado con un delicioso relleno de queso y jamón, creando una explosión de sabores irresistibles', price: 2000, available: true,
    photo: {
      io: File.open(Rails.root.join('app/assets/images/orders/gordon.jpg')),
      filename: 'gordon.jpg',
      content_type: 'image/jpg'
    }
)

Dish.create!(
    name: 'Hamburguesa', description: ' Una deliciosa y jugosa hamburguesa de alta calidad, preparada con carne 100% de res y sazonada a la perfección', price: 2400, available: true,
    photo: {
      io: File.open(Rails.root.join('app/assets/images/orders/hamburguesa.jpg')),
      filename: 'hamburguesa.jpg',
      content_type: 'image/jpg'
    }
)

Dish.create!(
    name: 'Helado', description: 'Una tentación dulce y refrescante que deleita los sentidos. Nuestro helado artesanal está elaborado con los ingredientes más selectos, creando una textura suave y cremosa', price: 1200, available: true,
    photo: {
      io: File.open(Rails.root.join('app/assets/images/orders/helado.jpg')),
      filename: 'helado.jpg',
      content_type: 'image/jpg'
    }
)

Dish.create!(
    name: 'Nachos', description: 'Una deliciosa y sabrosa opción para compartir. Nuestros nachos son crujientes y están cubiertos de queso derretido, jalapeños picantes y una selección de ingredientes frescos como tomate, cebolla y guacamole', price: 2800, available: true,
    photo: {
      io: File.open(Rails.root.join('app/assets/images/orders/nachos.jpg')),
      filename: 'nachos.jpg',
      content_type: 'image/jpg'
    }
)
  
Dish.create!(
    name: 'Pasta', description: 'Un clásico de la cocina italiana que cautiva los paladares. Nuestra pasta fresca se cocina al dente y se combina con una variedad de salsas exquisitas, desde la tradicional salsa de tomate hasta opciones más sofisticadas como la carbonara o la bolognesa', price: 2000, available: false,
    photo: {
      io: File.open(Rails.root.join('app/assets/images/orders/pasta.jpg')),
      filename: 'pasta.jpg',
      content_type: 'image/jpg'
    }
)

Dish.create!(
    name: 'Pinto', description: 'Un plato tradicional de la cocina costarricense que despierta el apetito. Nuestro pinto está hecho con arroz y frijoles cocidos lentamente, sazonados con una mezcla de especias y condimentos auténticos. Acompañado de plátano maduro frito, huevos al gusto', price: 2200, available: true,
    photo: {
      io: File.open(Rails.root.join('app/assets/images/orders/pinto.jpg')),
      filename: 'pinto.jpg',
      content_type: 'image/jpg'
    }
)

Dish.create!(
    name: 'Pizza', description: 'Un clásico irresistible que conquista todos los paladares. Nuestra pizza se hornea a la perfección, con una base de masa crujiente y esponjosa, cubierta de una salsa de tomate vibrante y una generosa cantidad de queso derretido', price: 3000, available: true,
    photo: {
      io: File.open(Rails.root.join('app/assets/images/orders/pizza.jpg')),
      filename: 'pizza.jpg',
      content_type: 'image/jpg'
    }
)

Dish.create!(
    name: 'Pollo', description: 'Una opción versátil y deliciosa que nunca decepciona. Nuestro pollo está cuidadosamente preparado para ofrecerte una carne jugosa y tierna', price: 2900, available: true,
    photo: {
      io: File.open(Rails.root.join('app/assets/images/orders/pollo.jpg')),
      filename: 'pollo.jpg',
      content_type: 'image/jpg'
    }
)

Dish.create!(
    name: 'Tacos', description: 'Un clásico de la cocina mexicana que te transporta a sabores auténticos. Nuestros tacos están hechos con tortillas de maíz recién hechas y rellenos de una amplia variedad de ingredientes sabrosos. Puedes elegir entre opciones como carne asada jugosa, pollo marinado, cerdo al pastor o incluso opciones vegetarianas como frijole', price: 1900, available: false,
    photo: {
      io: File.open(Rails.root.join('app/assets/images/orders/tacos.jpg')),
      filename: 'tacos.jpg',
      content_type: 'image/jpg'
    }
)

User.create!(
    email: 'kevin@gmail.com', password: '123456', password_confirmation: '123456' , name: 'Kevin', role: true
)
  
User.create!(
    email: 'jesush@gmail.com', password: '123456', password_confirmation: '123456' , name: 'Jesus', role: true
)
  
User.create!(
    email: 'daniel@gmail.com', password: '123456', password_confirmation: '123456' , name: 'Daniel', role: true
)

User.create!(
    email: 'keyleth@gmail.com', password: '123456', password_confirmation: '123456' , name: 'Keyleth', role: false
)

User.create!(
    email: 'francisco@gmail.com', password: '123456', password_confirmation: '123456' , name: 'Francisco', role: true
)
  
User.create!(
    email: 'harold@gmail.com', password: '123456', password_confirmation: '123456' , name: 'Harold', role: false
)
  
User.create!(
    email: 'harley@gmail.com', password: '123456', password_confirmation: '123456' , name: 'Harley', role: false
)
  
User.create!(
    email: 'hansy@gmail.com', password: '123456', password_confirmation: '123456' , name: 'Hansy', role: true
)

User.create!(
    email: 'michael@gmail.com', password: '123456', password_confirmation: '123456' , name: 'Michael', role: false
)
  

User.create!(
    email: 'marielos@gmail.com', password: '123456', password_confirmation: '123456', name: 'Marielos', role: false
)
  
User.create!(
    email: 'anderson@gmail.com', password: '123456', password_confirmation: '123456', name: 'Anderson', role: true
)

User.create!(
    email: 'victoria@gmail.com', password: '123456', password_confirmation: '123456', name: 'Victoria', role: false
)
  

Order.create(date: DateTime.new(2023, 7, 8, 8, 30), client_id: 1, dish_id: 1, quantity: 1)

Order.create(date: DateTime.new(2023, 7, 8, 8, 35), client_id: 2, dish_id: 2, quantity: 2)

Order.create(date: DateTime.new(2023, 7, 8, 7, 50), client_id: 3, dish_id: 3, quantity: 4)

Order.create(date: DateTime.new(2023, 7, 8, 8, 15), client_id: 4, dish_id: 4, quantity: 1)

Order.create(date: DateTime.new(2023, 7, 8, 8, 0), client_id: 5, dish_id: 5, quantity: 3)

Order.create(date: DateTime.new(2023, 7, 8, 8, 5), client_id: 6, dish_id: 4, quantity: 2)

Order.create(date: DateTime.new(2023, 7, 8, 7, 45), client_id: 7, dish_id: 7, quantity: 5)

Order.create(date: DateTime.new(2023, 7, 8, 8, 5), client_id: 8, dish_id: 8, quantity: 2)

Order.create(date: DateTime.new(2023, 7, 8, 8, 10), client_id: 9, dish_id: 9, quantity: 1)

Order.create(date: DateTime.new(2023, 7, 8, 8, 35), client_id: 10, dish_id: 8, quantity: 1)

Order.create(date: DateTime.new(2023, 7, 8, 9, 0), client_id: 1, dish_id: 1, quantity: 6)

Order.create(date: DateTime.new(2023, 7, 8, 8, 15), client_id: 1, dish_id: 2, quantity: 3)





