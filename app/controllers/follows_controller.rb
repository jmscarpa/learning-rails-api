class FollowsController < ApplicationController
  before_action :authenticated?

  def create
    user = User.find_by(id: params[:user_id])
    head :not_found and return if user.nil?

    current_user.unfollow(user) unless user.nil?

    head :created
  end

  def destroy
    user = User.find(params[:user_id])
    head :not_found and return if user.nil?

    current_user.unfollow(user) unless user.nil?

    head :ok
  end
end