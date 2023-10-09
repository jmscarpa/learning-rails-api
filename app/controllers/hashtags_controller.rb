class HashtagsController < ApplicationController
  def index
    @hashtags = Hashtag.with_count
  end

  def show
    @posts = Feed.new(current_user).posts_with_hashtag(Hashtag.find(params[:id]))
  end
end
