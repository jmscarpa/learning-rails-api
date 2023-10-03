class ApplicationController < ActionController::API

  def authenticated?
    head :unauthorized unless current_user
  end

  def current_user
    user_id = request.headers["user-id"]
    user ||= User.find_by(id: user_id)
  end

end
