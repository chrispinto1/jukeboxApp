Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :sessions
  # resources :users, except: [:show]
  get "/", to: "users#index"
  get "/signup", to: "users#new", as: "users"
  get "/dashboard", to: "users#show"
  get "/songs", to: "songs#index"
  get "/dashboard", to: "users#show"
  get "/contact", to: "users#contact"
  get "/login", to:"sessions#new", as: "login"
  get "/settings", to:"users#settings"
  post "/dashboard", to:"songs#remove"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  post "/songs", to: "songs#putsong"
  delete "/logout", to: "sessions#destroy"

  # resources :payments, only: [:index, :new, :create]
  get "/index", to: "payments#index"
  get "/payments", to: "payments#new", as:"new_payment"
  post "/payments", to: "payments#create"

end
