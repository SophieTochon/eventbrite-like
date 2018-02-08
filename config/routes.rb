Rails.application.routes.draw do

  get 'events/new'
  get 'events/show'
  get 'events/index'

  root "users#index"

  get 'users/new'
  get 'users/show'

  get 'events/new'
  get 'events/show'
  get 'events/index'

  resources :users
  resources :events

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
