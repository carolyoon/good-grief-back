class Api::AdvicePostsController < ApplicationController

  before_action :find_advice_post, only: [:update, :destroy]
  # before_action :authenticate_user

  def index
    @advice_posts = AdvicePost.all.order(:created_at)

    render json: @advice_posts
  end

  def create
    @advice_post = AdvicePost.new(advice_params)

    if @advice_post.save
      render json: {advice_post: @advice_post}
    else
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
    params.require(:advice_post.permit(:content))
  end

  def find_advice_post
    @advice_post = AdvicePost.find(params[:id])
  end

end
