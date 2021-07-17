require 'rails_helper'

describe "burgers_controller", type: :request do
  context "when a call is made to the burger controller" do
    before do
      get '/api/v1/burgers'
    end

    it "returns succesful response" do
      expect(response.status).to eql(200)
    end

    it "responds with a resource" do
      expect(response.body).to be_truthy
    end
  end
end
