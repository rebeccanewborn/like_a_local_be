class Api::V1::UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      render json: {jwt: @user.token, user: @user}
    else
      render json: {error: @user.errors}, status: 400
    end
  end

  def update
    @excursion = Excursion.find_by(id: params[:excursion_id])
    @user = User.find_by(id: params[:id])
    @user.excursions << @excursion
    render json: @excursion
  end

  private
  def user_params
    params.require(:user).permit(:name, :bio, :email, :password)
  end

end
