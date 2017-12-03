class Api::StagesController < ApplicationController

  def show
    render json: @stage
  end

  private

  def get_stage
    @stage = Stage.find(params[:id])
  end

end
