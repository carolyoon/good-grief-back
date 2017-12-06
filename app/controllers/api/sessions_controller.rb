class Api::SessionsController < ApplicationController

  def create
    @user = User.find_by(username: session_params[:username])
    if @user && @user.authenticate(session_params[:password])
      @token = @user.set_token
      render json: @user
    else
      @errors = ["Login failed"]
      render json: {errors: @errors}, status: 406
    end
  end

  def refresh
    @user = User.find(session_params[:user_id])
    eap session_params[:user_id]
    @user.token = session_params[:token]
    @decoded_id = @user.decode_token.first['user']
    if @decoded_id == @user.id
      render json: @user
    else
      @errors = ["Something went wrong"]
      render json: {errors: @errors}, status: 406
    end
  end

  def destroy
  end

  private

  def session_params
    params.require(:session).permit(:username, :password, :user_id, :token)
  end
end
