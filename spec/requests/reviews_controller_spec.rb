require 'rails_helper'

describe "reviews_controller", type: :request do
  context "when a call is made to the reviews controller for a review" do
    before do
      get '/api/v1/reviews'
    end

    it "returns succesful response" do
      expect(response.status).to eql(200)
    end

    it "responds with a resource" do
      expect(response.body).to be_truthy
    end
  end
end
