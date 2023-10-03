class ProfilesController < ApplicationController

  before_action :authenticated?

  def show
    render json: current_user
  end

end