class Api::V1::ExcursionsController < ApplicationController
  def create
    @excursion = Excursion.new(excursion_params)
    if @excursion.valid?
      @excursion.save
      render json: @excursion
    else
      render json: {error: @excursion.errors}, status: 400
    end
  end

  private
  def excursion_params
    params.require(:excursion).permit(:title, :description, :duration, :price, :city_id)
  end
end
