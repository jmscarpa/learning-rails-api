Rails.application.routes.draw do
  scope defaults: { format: :json } do
    get "/", controller: :home, action: :index
    resources :users, only: [:index, :show, :create]
  end
end