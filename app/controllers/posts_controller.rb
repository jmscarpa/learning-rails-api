class PostsController < ApplicationController
  
  def index
    @show_id = false
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

end
