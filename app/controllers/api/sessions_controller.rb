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

  def destroy
  end

  private

  def session_params
    params.require(:session).permit(:username, :password)
  end
end
