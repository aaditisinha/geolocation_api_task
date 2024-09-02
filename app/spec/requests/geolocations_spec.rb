require 'rails_helper'

RSpec.describe "Api::V1::Geolocations", type: :request do
  let(:valid_attributes) { { ip_or_url: "8.8.8.8" } }
  let(:invalid_attributes) { { ip_or_url: "" } }
  let(:valid_headers) { { 'Authorization' => ActionController::HttpAuthentication::Basic.encode_credentials(ENV['API_USERNAME'], ENV['API_PASSWORD']) } }

  describe "GET /index" do
    it "returns a success response" do
      Geolocation.create! valid_attributes
      get api_v1_geolocations_path, headers: valid_headers
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Geolocation" do
        expect {
          post api_v1_geolocations_path, params: valid_attributes, headers: valid_headers
        }.to change(Geolocation, :count).by(1)
      end
    end

    context "with invalid parameters" do
      it "does not create a new Geolocation" do
        expect {
          post api_v1_geolocations_path, params: invalid_attributes, headers: valid_headers
        }.to change(Geolocation, :count).by(0)
      end
    end
  end

  # Add more tests for show and destroy actions
end