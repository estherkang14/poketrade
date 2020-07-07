Rails.application.routes.draw do
  resources :pokemon_cards
  resources :user_collections
  resources :users
  # root "pokemon_cards#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
