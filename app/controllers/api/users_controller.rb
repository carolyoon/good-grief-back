class Api::UsersController < ApplicationController

  before_action :authenticate_user, only: [:show, :update]

  def create
    @stage = Stage.find_by_name(user_params[:stage])
    @user = @stage.users.new(username: user_params[:username], password: user_params[:password])
    if @user.save
      @token = @user.set_token
      p @token
      payload = {user: @user, token: @token}
      render json: payload
    else
      p @errors = @user.errors.full_messages
      render json: {errors: @errors}, status: 406
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(user_params)

    render json: @user
  end



  private

  def user_params
    params.require(:user).permit(:username, :password, :stage)
  end

end
