class PostsController < ApplicationController

  before_action :authenticated?
  
  def index
    @posts = Feed.new(current_user).posts
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    post = current_user.posts.new(post_params)
    if post.save
      head :created
    else
      render json: { errors: post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    post = Post.find(params[:id])
    if post.destroy
      head :no_content
    else
      render json: { errors: post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.permit(:body, :user_id)
  end

end
