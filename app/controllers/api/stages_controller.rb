class Api::StagesController < ApplicationController

  before_action :authenticate_user

  def show
    render json: @stage
  end

  private

  def get_stage
    @stage = Stage.find(params[:id])
  end

end
