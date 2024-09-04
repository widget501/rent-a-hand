Rails.application.routes.draw do

  devise_for :users
  # root to: "pages#home"
  # root to: "home#index"
  root to: "services#index"

  resources :services do
    resources :bookings, only: [:new, :index, :create]
  end

  resources :bookings, only: [:edit, :index, :update, :destroy] do
    member do
      patch :accept   # Route for accepting a booking
      patch :decline  # Route for declining a booking
    end
  end

  get "dashboard", to: "pages#dashboard"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
