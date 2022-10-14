Rails.application.routes.draw do
  root "villagers#index"

  get "/villagers", to: "villagers#index"
end