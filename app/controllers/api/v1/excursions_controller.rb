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
    params.require(:excursion).permit(:title, :description, :duration, :price, :city_id, :host_id)
  end
end
