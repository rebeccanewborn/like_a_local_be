class Api::V1::PhotosController < ApplicationController
  def create_multiple
    params[:photos].map { |photo| Photo.create(image: photo, excursion_id: params[:excursion_id], user_id: params[:user_id])}
    @excursion = Excursion.find(params[:excursion_id])
    render json: @excursion
  end

  private
  def photos_params
    params.permit(:photos, :excursion_id, :user_id)
  end
end
