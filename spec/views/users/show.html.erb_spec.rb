require 'rails_helper'

RSpec.describe "users/show", :type => :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "Name",
      :email => "Email",
      :date => "Date",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>", :pending => true do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Date/)
    expect(rendered).to match(/Phone/)
  end
end
