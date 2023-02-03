Rails.application.routes.draw do
  resources :checkins
  resources :events
  resources :users

  root "events#index"
    resources :users, only: [:index, :show] 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
