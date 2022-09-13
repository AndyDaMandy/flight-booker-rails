Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :flights, only: [:index, :search, :show]
  resources :bookings do
    resources :passengers
  end

  root to: "flights#index"

end
