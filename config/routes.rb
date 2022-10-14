Rails.application.routes.draw do
  root "villagers#index"

  get "/villagers", to: "villagers#index"
  get 'about/index'
  resources :villager
end