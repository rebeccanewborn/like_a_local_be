class Api::V1::CitiesController < ApplicationController
  def index
    @cities = City.all
    render json: @cities
  end

  def show
    @city = City.find_by(id: params[:id])
    if @city
      render json: @city
    else
      render json: {error: "City not found"}, status: 404
    end
  end
end
