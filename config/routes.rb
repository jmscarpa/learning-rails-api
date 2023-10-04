Rails.application.routes.draw do
  resources :users do
    resource :follows, only: [:create, :destroy]
  end

  resources :posts
  resources :hashtags, only: [:index, :show]

  resource :profiles, only: [:show]
end
