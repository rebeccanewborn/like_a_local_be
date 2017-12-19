class Api::V1::AuthController < ApplicationController
  def create
    @user = User.find_by(email: params[:auth][:email])
    if @user && @user.authenticate(params[:auth][:password])
      render json: {user: UserSerializer.new(@user), jwt: @user.token}
    else
      render json: {error: 'User not found'}, status: 404
    end
  end

  def show
    token = request.headers['token']
    decoded = JWT.decode(token, ENV['secret'], true, { algorithm: ENV['algo'] })
    @user = User.find_by(email: decoded[0]['email'])
    if @user
      render json: @user
    else
      render json: {error: 'No id present on headers'}, status: 404
    end
  end

end
