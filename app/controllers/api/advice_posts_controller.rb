class Api::AdvicePostsController < ApplicationController

  before_action :find_advice_post, only: [:update, :destroy]
  # before_action :authenticate_user

  def index
    @advice_posts = AdvicePost.all.order(:created_at)

    render json: @advice_posts
  end

  def create
    @stage = Stage.find_by(name: advice_params[:stageName].capitalize)
    @advice_post = AdvicePost.new(content: advice_params[:content], stage_id: @stage.id)

    if @advice_post.save
      render json: {advice_post: @advice_post}
    else
      eap @advice_post
      eap @advice_post.errors.full_messages
      render json: {errors: @advice_post.errors.full_messages}, status: 422
    end
  end

  def update
    if @advice_post.update(advice_params)
      render json: {advice_post: @advice_post}
    else
      render json: {error: @advice_post.errors.full_messages}, status: 422
    end
  end

  def destroy
    @advice_post.destroy
  end

  private

  def advice_params
    params.require(:advice_post).permit(:content, :stageName)
  end

  def find_advice_post
    @advice_post = AdvicePost.find(params[:id])
  end

end
