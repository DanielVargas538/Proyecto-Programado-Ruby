# spec/models/dish_spec.rb

require 'rails_helper'

RSpec.describe Dish, type: :model do
  subject {
    described_class.new(
      name: 'Dish Name',
      description: 'Dish Description',
      price: 9.99,
      photo: 'dish.jpg',
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

    it "is not valid without an availability status" do
      subject.available = nil
      expect(subject).to_not be_valid
    end


  ###end
end
