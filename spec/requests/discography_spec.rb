require 'rails_helper'

RSpec.describe "Discographies", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/discography/index"
      expect(response).to have_http_status(:success)
    end
  end

end
