class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    allowed_params = params.require(:user).permit(:username, :name, :email)
    user = User.new(allowed_params)
    if user.save
      head :created
    else
      render json: { error: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

end