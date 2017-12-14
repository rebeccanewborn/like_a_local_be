class Api::V1::AuthController < ApplicationController
  def create
    @user = User.find_by(email: params[:auth][:email])
    if @user && @user.authenticate(params[:auth][:password])
      render json: {user: @user, jwt: @user.token}
    else
      render json: {error: 'User not found'}, status: 404
    end
  end

end
