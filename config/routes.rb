Rails.application.routes.draw do
  resources :users
  resources :posts, only: [:index, :show]

  resource :profiles, only: [:show]
end
