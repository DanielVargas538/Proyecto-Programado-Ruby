require 'rails_helper'

RSpec.describe "dishes/edit", type: :view do
  let(:dish) {
    Dish.create!(
      name: "MyString",
      description: "MyText",
      price: "9.99",
      photo: "MyString",
      available: false
    )
  }

  before(:each) do
    assign(:dish, dish)
  end

  it "renders the edit dish form" do
    render

    assert_select "form[action=?][method=?]", dish_path(dish), "post" do

      assert_select "input[name=?]", "dish[name]"

      assert_select "textarea[name=?]", "dish[description]"

      assert_select "input[name=?]", "dish[price]"

      assert_select "input[name=?]", "dish[photo]"

      assert_select "input[name=?]", "dish[available]"
    end
  end
end
