require 'rails_helper'

RSpec.describe "users/new", :pending => true, :type => :view do
  before(:each) do
    assign(:user, User.new(
      :name => "MyString",
      :email => "MyString",
      :date => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders new user form", :pending => true do
   # render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_date[name=?]", "user[date]"

      assert_select "input#user_phone[name=?]", "user[phone]"
    end
  end
end
