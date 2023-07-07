require 'rails_helper'

RSpec.describe User, type: :model do
  subject {
    described_class.new(
      name: 'Daniel',
      role: 'cook',
      email: 'danielvargas@gmail.com',
      password: '15425478',
      password_confirmation: '15425478'
    )
  }
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a role" do
      subject.role = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a password" do
      subject.password = nil
      expect(subject).to_not be_valid
    end
    
end