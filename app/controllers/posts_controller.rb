class PostsController < ApplicationController
  
  def index
    @show_id = false
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    post = Post.new(post_params)
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
