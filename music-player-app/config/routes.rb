Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, except: [:show]
  get "/users/login", to: "users#login"
  post "/users/:id", to: "users#show"
  get "/users/:id", to: "users#show"

end
