Rails.application.routes.draw do
  root "application#homepage"
  resources :pokemon_cards
  resources :user_collections
  resources :users
  get "/login", to: "sessions#login"
  post "/login", to: "sessions#process_login"
  get "/logout", to: "sessions#logout"
  # root "pokemon_cards#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
