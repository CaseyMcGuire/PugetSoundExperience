require 'rails_helper'

RSpec.describe "users/edit", :pending => true, :type => :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "MyString",
      :email => "MyString",
      :date => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit user form", :pending => true do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_date[name=?]", "user[date]"

      assert_select "input#user_phone[name=?]", "user[phone]"
    end
  end
end
