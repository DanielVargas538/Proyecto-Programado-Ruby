require 'rails_helper'

RSpec.describe Dish, type: :model do
  subject {
    described_class.new(  
      name: 'Cangreburger',
      description: 'TUTUTUTUTU Pizza',
      price: 9.99,
      photo: {
        io: File.open(Rails.root.join('app/assets/images/orders/cantones.jpg')),
        filename: 'cantones.jpg',
        content_type: 'image/jpg'
      },
      available: true
    )
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a description" do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a price" do
    subject.price = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a photo" do
    subject.photo = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without availability" do
    subject.available = nil
    expect(subject).to_not be_valid
  end
end
