class AdvicePostsController < ApplicationController

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

  private

  def advice_params
    params.require(:advice_post.permit(:content))
  end

end
