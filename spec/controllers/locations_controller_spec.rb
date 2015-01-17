require 'rails_helper'

RSpec.describe LocationsController, :type => :controller do

  describe "GET info", :pending => true do
    it "returns http success" do
      get :info
      expect(response).to have_http_status(:success)
    end
  end

end
