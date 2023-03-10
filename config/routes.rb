Rails.application.routes.draw do
  devise_for :users
  

  resources :events
  resources :users

  root "events#index"
    resources :users, only: [:index, :show] 
    resources :events, only: [:index, :show] do
      resources :checkins, only: [:create]
    end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
