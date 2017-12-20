class Api::V1::UserExcursionsController < ApplicationController
  def create
    @user_excursion = UserExcursion.new(user_excursion_params)
    if @user_excursion.valid?
      @user_excursion.save
      @excursion = @user_excursion.excursion_occurrence.excursion
      render json: @excursion
    else
      render json: {error: @user_excursion.errors}, status: 400
    end
  end

  private
  def user_excursion_params
    params.require(:user_excursion).permit(:user_id, :excursion_occurrence_id)
  end
end
