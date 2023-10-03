class ProfilesController < ApplicationController

  before_action :authenticated?

  def show
    @user = current_user
  end

end