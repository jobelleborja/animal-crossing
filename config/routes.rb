Rails.application.routes.draw do
  root "villagers#index"

  get "/villagers", to: "villagers#index"
  get "/about", to: "about#index"
  resources :villagers, only: [:index, :show] do
    collection do
      get "search"
    end
  end
end

# get "/villager/:id", to: "villagers#show"
# get 'about/index'
# resources :villager