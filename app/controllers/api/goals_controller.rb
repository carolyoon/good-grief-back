class Api::GoalsController < ApplicationController
  protect_from_forgery with: :null_session

  before_action :find_goal, only: [:update, :destroy]
  # before_action :authenticate_user

  def index
    @user = User.find_by(id: params[:user_id])
    @goals = @user.goals.order(created_at: :desc)

    render json: @goals
  end

  def create
    @user = User.find_by(id: params[:user_id])
    @goal = Goal.new(goal_params)
    @goal.user = @user

    if @goal.save
      render json: {goal: @goal}
    else
      render json: {errors: @goal.errors.full_messages}, status: 422
    end
  end

  def update
    if @goal.update(goal_params)
      render json: {goal: @goal}
    else
      render json: {error: @goal.errors.full_messages}, status: 422
    end
  end

  def destroy
    @goal.destroy

    render status: 200
  end

  private

  def find_goal
    @goal = Goal.find_by(id: params[:id])
  end

  def goal_params
    params.require(:goal).permit(:content)
  end

end
