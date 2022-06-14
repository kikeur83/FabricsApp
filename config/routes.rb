Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "users", to: "users#show"

   resources :creations, only: [:show, :index] do
    resources :favoris, only: [:new, :create]
  end

  resources :favoris, only: [:destroy]
end
