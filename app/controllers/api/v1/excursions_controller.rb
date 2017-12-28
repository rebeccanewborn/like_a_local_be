class Api::V1::ExcursionsController < ApplicationController
  def create
    @excursion = Excursion.new(excursion_params)
    avatar_base64s = params[:avatar_base64s]
    if @excursion.valid?
      @excursion.save
      photos = avatar_base64s.map { |base64| Photo.create(image: base64, user_id: params[:host_id], excursion_id: @excursion.id) }
      @excursion.photos = photos
      @excursion.save
      binding.pry
      render json: @excursion
    else
      render json: {error: @excursion.errors}, status: 400
    end
  end

  def show
    @excursion = Excursion.find_by(id: params[:id])
    if @excursion
      render json: @excursion
    else
      render json: {error: "Excursion not found"}, status: 404
    end

  end

  def destroy
    @excursion = Excursion.find_by(id: params[:id])
    @excursion.destroy
    @cities = City.all
    render json: @cities
  end

  private
  def excursion_params
    params.require(:excursion).permit(:title, :description, :duration, :price, :city_id, :host_id, :lat, :lng, :address)
  end
end
