require 'rails_helper'

RSpec.describe Order, type: :model do
  subject {
    described_class.new(
      date: DateTime.new(2023, 1, 1, 10, 30),
      state: 1,
      quantity: 2,
      dish: Dish.create!( name: 'Arroz cantones', description: 'Plato elaborado con el mejor arroz de la zona, incluye camarones, pollo y otras delecias de las casa', price: 2500, available: true, photo: { io: File.open(Rails.root.join('app/assets/images/orders/cantones.jpg')), filename: 'cantones.jpg',content_type: 'image/jpg'}),
      client: Client.create!( email: 'ava.harris@example.com', password: '123456', password_confirmation: '123456', first_name: 'Ava', last_name: 'Harris', phone: 445566, province: 'Colorado', canton: 'Denver', district: 'LoDo', street: '16th Street', locked: false)
    )
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a date" do
    subject.date = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a state" do
    subject.state = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a quantity" do
    subject.quantity = nil
    expect(subject).to_not be_valid
  end
 
end
