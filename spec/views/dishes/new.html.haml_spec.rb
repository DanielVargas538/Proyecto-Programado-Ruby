require 'rails_helper'

RSpec.describe "dishes/new", type: :view do
  before(:each) do
    assign(:dish, Dish.new(
      name: "MyString",
      description: "MyText",
      price: "9.99",
      photo: "MyString",
      available: false
    ))
  end

  it "renders new dish form" do
    render

    assert_select "form[action=?][method=?]", dishes_path, "post" do

      assert_select "input[name=?]", "dish[name]"

      assert_select "textarea[name=?]", "dish[description]"

      assert_select "input[name=?]", "dish[price]"

      assert_select "input[name=?]", "dish[photo]"

      assert_select "input[name=?]", "dish[available]"
    end
  end
end
