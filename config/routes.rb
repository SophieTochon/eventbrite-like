Rails.application.routes.draw do

  root "sessions#new"

  resources :users
  resources :events do
  	post "suscribe", on: :member
  end

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
