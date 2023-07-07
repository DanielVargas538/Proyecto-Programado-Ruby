Client.create!(
    email: 'john.doe@example.com', password: '123456' , first_name: 'John', last_name: 'Doe',phone: 1234590, province: 'California', canton: 'Los Angeles', district: 'Downtown', street: 'Main Street', locked: false
)
  
Client.create!(
    email: 'jane.smith@example.com', password: '123456' , first_name: 'Jane', last_name: 'Smith', phone: 9873210, province: 'New York', canton: 'Manhattan', district: 'Midtown', street: 'Park Avenue', locked: true
)
  
Client.create!(
    email: 'michael.williams@example.com', password: '123456' , first_name: 'Michael', last_name: 'Williams', phone: 1525454, province: 'Texas', canton: 'Austin', district: 'Downtown', street: 'Congress Avenue', locked: false
)
  
Client.create!(
    email: 'emma.wilson@example.com', password: '123456' , first_name: 'Emma', last_name: 'Wilson', phone: 534567, province: 'California', canton: 'San Francisco', district: 'Mission District', street: 'Valencia Street', locked: false
)
  
Client.create!(
    email: 'david.johnson@example.com', password: '123456' , first_name: 'David', last_name: 'Johnson', phone: 777943, province: 'Florida', canton: 'Miami', district: 'South Beach', street: 'Ocean Drive', locked: true
)
  
Client.create!(
    email: 'olivia.brown@example.com', password: '123456' , first_name: 'Olivia', last_name: 'Brown', phone: 8854321, province: 'New York', canton: 'Brooklyn', district: 'Williamsburg', street: 'Bedford Avenue', locked: false
)
  
Client.create!(
    email: 'sophia.jackson@example.com', password: '123456' , first_name: 'Sophia', last_name: 'Jackson', phone: 5596543, province: 'Texas', canton: 'Houston', district: 'Montrose', street: 'Westheimer Road', locked: false
  )
  
Client.create!( email: 'noah.thompson@example.com', password: '123456',password_confirmation: '123456', first_name: 'Noah', last_name: 'Thompson', phone: 9994567, province: 'Illinois', canton: 'Chicago', district: 'Lincoln Park', street: 'Clark Street', locked: true
)

Client.create!(
    email: 'isabella.white@example.com', password: '123456' , first_name: 'Isabella', last_name: 'White', phone: 775521, province: 'Florida', canton: 'Orlando', district: 'Downtown', street: 'Orange Avenue', locked: false
)

Client.create!(
    email: 'mia.moore@example.com', password: '123456' , first_name: 'Mia', last_name: 'Moore', phone: 555122, province: 'California', canton: 'San Diego', district: 'Gaslamp Quarter', street: 'Fifth Avenue', locked: false
)
  
Client.create!(
    email: 'ethan.davis@example.com', password: '123456' , first_name: 'Ethan', last_name: 'Davis', phone: 888000, province: 'Washington', canton: 'Seattle', district: 'Belltown', street: 'First Avenue', locked: true
)

Client.create!(
    email: 'ava.harris@example.com', password: '123456' , first_name: 'Ava', last_name: 'Harris', phone: 4445666, province: 'Colorado', canton: 'Denver', district: 'LoDo', street: '16th Street', locked: false
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
    name: 'Pizza', description: 'n clásico irresistible que conquista todos los paladares. Nuestra pizza se hornea a la perfección, con una base de masa crujiente y esponjosa, cubierta de una salsa de tomate vibrante y una generosa cantidad de queso derretido', price: 3000, available: true,
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
    email: 'john.doe@example.com', password: '123456', password_confirmation: '123456' , name: 'John Doe', role: false
)
  
User.create!(
    email: 'jane.smith@example.com', password: '123456', password_confirmation: '123456' , name: 'Jane Smith', role: true
)
  
User.create!(
    email: 'michael.williams@example.com', password: '123456', password_confirmation: '123456' , name: 'Michael Williams', role: false
)

User.create!(
    email: 'emma.wilson@example.com', password: '123456', password_confirmation: '123456' , name: 'Emma Wilson', role: false
)

User.create!(
    email: 'david.johnson@example.com', password: '123456', password_confirmation: '123456' , name: 'David Johnson', role: true
)
  
User.create!(
    email: 'olivia.brown@example.com', password: '123456', password_confirmation: '123456' , name: 'Olivia Brown', role: false
)
  
User.create!(
    email: 'sophia.jackson@example.com', password: '123456', password_confirmation: '123456' , name: 'Sophia Jackson', role: false
)
  
User.create!(
    email: 'noah.thompson@example.com', password: '123456', password_confirmation: '123456' , name: 'Noah Thompson', role: true
)

User.create!(
    email: 'isabella.white@example.com', password: '123456', password_confirmation: '123456' , name: 'Isabella White', role: false
)
  

User.create!(
    email: 'mia.moore@example.com', password: '123456', password_confirmation: '123456', name: 'Mia Moore', role: false
)
  
User.create!(
    email: 'ethan.davis@example.com', password: '123456', password_confirmation: '123456', name: 'Ethan Davis', role: true
)

User.create!(
    email: 'ava.harris@example.com', password: '123456', password_confirmation: '123456', name: 'Ava Harris', role: false
)
  

Order.create(date: DateTime.new(2023, 1, 1, 10, 30), client_id: 1, dish_id: 1)

Order.create(date: DateTime.new(2023, 2, 15, 18, 45), client_id: 2, dish_id: 2)

Order.create(date: DateTime.new(2023, 3, 10, 12, 0), client_id: 3, dish_id: 3)

Order.create(date: DateTime.new(2023, 4, 20, 20, 15), client_id: 4, dish_id: 4)

Order.create(date: DateTime.new(2023, 5, 5, 13, 30), client_id: 5, dish_id: 5)

Order.create(date: DateTime.new(2023, 6, 20, 19, 0), client_id: 6, dish_id: 4)

Order.create(date: DateTime.new(2023, 7, 10, 14, 45), client_id: 7, dish_id: 7)

Order.create(date: DateTime.new(2023, 8, 15, 17, 15), client_id: 8, dish_id: 8)

Order.create(date: DateTime.new(2023, 9, 1, 11, 30), client_id: 9, dish_id: 9)

Order.create(date: DateTime.new(2023, 10, 15, 17, 45), client_id: 10, dish_id: 8)

Order.create(date: DateTime.new(2023, 11, 8, 13, 0), client_id: 1, dish_id: 1)

Order.create(date: DateTime.new(2023, 12, 20, 21, 15), client_id: 1, dish_id: 2)





