Rails.application.routes.draw do
  root to: "home#show"

  get "/users/new", to: "users#new"
  post "/users", to: "users#create"

  resources :users, only: [:new, :create]

  #get "/users/:id/edit", to: "users#edit"
  #patch "/users/:id", to: "users#update"
  #put "/users/:id", to: "users#update"
  #delete "/users/:id", to: "users#destroy"
  #get "/users", to: #users#index
  #get "/users/:id", to: "users#show"


  #Login
  resources :sessions, only: [:new, :create] do 
    collection do
      delete "sign_out", to: "sessions#destroy", as: "sign_out"
    end
  end
end
