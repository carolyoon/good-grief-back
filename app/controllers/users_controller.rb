class UsersController < ApplicationController

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user
    else
      @errors = @user.errors.full_messages
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
    params.require(:user).permit(:username, :password)
  end

end
