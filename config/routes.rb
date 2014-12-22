Rails.application.routes.draw do

  root "pages#home"

  get "logout", to: "sessions#destroy"

  resources :repositories, only: [:show]
  resources :commits, only: [:index, :show] do
    resources :comments, only: [:new, :create, :destroy]
  end
  # resources :comments, only: [:destroy]
  
  resources :users, only: [:new, :create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]

end
