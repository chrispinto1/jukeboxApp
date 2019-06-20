Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :sessions
  # resources :users, except: [:show]
  get "/", to: "users#index"
  get "/signup", to: "users#new", as: "users"
  get "/dashboard", to: "users#show"
  get "/songs", to: "songs#index"
  get "/dashboard", to: "users#show"
  get "/login", to:"sessions#new", as: "login"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  post "/songs", to: "songs#putsong"
  delete "/logout", to: "sessions#destroy"



end
