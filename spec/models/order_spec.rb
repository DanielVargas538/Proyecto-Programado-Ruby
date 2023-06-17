require 'rails_helper'

RSpec.describe Order, type: :model do
  subject {
    described_class.new(
      date: Date.today,
      state: 1
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
 
end
