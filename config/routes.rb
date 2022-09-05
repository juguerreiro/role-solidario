Rails.application.routes.draw do
  devise_for :users
<<<<<<< Updated upstream
  root to: "donations#index"
  resources :report_news, only: [:index]
=======
>>>>>>> Stashed changes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
<<<<<<< Updated upstream
  resources :donations, only: %i[new create]
=======
  resources :donations, only: %i[new create make_your_donation]
>>>>>>> Stashed changes
end
