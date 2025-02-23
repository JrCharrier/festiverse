Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check


  # Defines the root path route ("/")
  # root "posts#index"
  get "dashboard" => "pages#dashboard", as: :dashboard
  get "profile" => "pages#profile", as: :profile

  resources :festivals

  resources :my_festivals, only: [:update]

  get "search", to: "pages#search", as: :search
  get "categories/:genre", to: "festivals#category", as: :category
end
