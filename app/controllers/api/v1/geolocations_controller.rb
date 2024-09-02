module Api
  module V1
    class GeolocationsController < ApplicationController
      protect_from_forgery with: :null_session
      before_action :authenticate
      before_action :set_geolocation, only: [:show, :destroy]

      def index
        geolocations = Geolocation.all
        render json: GeolocationSerializer.new(geolocations).serializable_hash
      end

      def show
        render json: GeolocationSerializer.new(@geolocation).serializable_hash
      end

      def create
        geolocation_data = GeolocationService.new.fetch(params[:ip_or_url])
        geolocation = Geolocation.new(
          ip: geolocation_data['ip'],
          url: params[:ip_or_url],
          latitude: geolocation_data['latitude'],
          longitude: geolocation_data['longitude'],
          country: geolocation_data['country_name'],
          city: geolocation_data['city']
        )
        if geolocation.save
          render json: GeolocationSerializer.new(geolocation).serializable_hash, status: :created
        else
          render json: { errors: geolocation.errors }, status: :unprocessable_entity
        end
      end

      def destroy
        @geolocation.destroy
        head :no_content
      end

      private

      def set_geolocation
        @geolocation = Geolocation.find(params[:id])
      end

      def authenticate
        authenticate_or_request_with_http_basic do |username, password|
          username == ENV['API_USERNAME'] && password == ENV['API_PASSWORD']
        end
      end
    end
  end
end