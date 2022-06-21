Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "users", to: "users#show"

  resources :creations, only: [:show, :index] do
    member do
      post 'toggle_favorite', to: "creations#toggle_favorite"
    end
  end

  resources :user_materiels, only: [:new, :create, :destroy]

end
