Rails.application.routes.draw do
  scope defaults: { format: :json } do
    get "/", controller: :home, action: :index
  end
end