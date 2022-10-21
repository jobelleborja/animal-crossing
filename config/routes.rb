Rails.application.routes.draw do
  root "villagers#index"

  get "/villagers", to: "villagers#index"
  get "/villagers/:id", to: "villagers#show"
  get 'about/index'
  resources :villager
end