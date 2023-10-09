Rails.application.routes.draw do
  scope '', defaults: { format: :json } do 
    root to: "status#index"

    resources :users do
      resource :follows, only: [:create, :destroy]
    end

    resources :posts
    resources :hashtags, only: [:index, :show]

    resource :profiles, only: [:show]
  end
end
