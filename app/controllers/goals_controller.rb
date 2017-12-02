class GoalsController < ApplicationController

  before_action :find_goal, only: [:update, :destroy]

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(params[:goals_params])
    if @goal.save
      render json: @goal
    else
      render json: @goal.errors
    end
  end

  def update
    @goal.update(goals_params)
    if @goal.save
      render json: @goal
    else
      render json: @goal.errors
    end
  end

  def destroy
    @goal.destroy
  end

  private

  def find_goal
    @goal = Goal.find(params[:id])
  end

  def goals_params
    params.require(:goals).permit(:content, :completed, :)
  end

end