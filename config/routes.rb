Rails.application.routes.draw do
  devise_for :users
  root to: "donations#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :donations, only: %i[new create]
end
