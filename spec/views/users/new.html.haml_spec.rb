require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      name: "MyString",
      role: "MyString",
      status: false,
      password: "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input[name=?]", "user[name]"

      assert_select "input[name=?]", "user[role]"

      assert_select "input[name=?]", "user[status]"

      assert_select "input[name=?]", "user[password]"
    end
  end
end
