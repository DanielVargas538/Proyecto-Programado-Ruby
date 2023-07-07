require 'rails_helper'

RSpec.describe Client, type: :model do
  subject {
    described_class.new(
      first_name: 'Daniel',
      last_name: 'Vargas',
      phone: 87541241,
      province: 'Alajuela',
      canton: 'Grecia',
      district: 'Tacares',
      street: 'Bodegas',
      locked: false,
      email: 'danielvargas@gmail.com',
      password: '12547855'
    )
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a first_name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a last_name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a phone" do
    subject.phone = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a canton" do
    subject.canton = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a street" do
    subject.street = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a locked" do
    subject.locked = nil
    expect(subject).to_not be_valid
  end

end
