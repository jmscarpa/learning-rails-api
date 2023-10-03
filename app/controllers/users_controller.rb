class UsersController < ApplicationController
  before_action :set_user, only: %i[ update destroy ]

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(username: params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      head :ok
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      head :ok
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :bio)
    end
end
