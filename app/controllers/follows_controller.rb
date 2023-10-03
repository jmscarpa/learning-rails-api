class FollowsController < ApplicationController
  before_action :authenticated?

  def create
    user = User.find(params[:user_id])

    current_user.follow(user)

    head :created
  end

  def destroy
    user = User.find(params[:user_id])
    current_user.unfollow(user)

    head :ok
  end
end