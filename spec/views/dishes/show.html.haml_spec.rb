require 'rails_helper'

RSpec.describe "dishes/show", type: :view do
  before(:each) do
    assign(:dish, Dish.create!(
      name: "Name",
      description: "MyText",
      price: "9.99",
      photo: "Photo",
      available: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Photo/)
    expect(rendered).to match(/false/)
  end
end
