Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, except: [:show]
  get "/session", to:"users#loginprocess"
  get "/users/login", to: "users#login"
  get "/users/:id", to: "users#show"
  post "/users/login", to: "users#show"

end
