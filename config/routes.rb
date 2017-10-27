Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers

  patch 'capture', to: "pokemons#capture", as: 'capture'
  patch 'damage', to: "pokemons#damage", as: 'damage' #Hints say patch, is it the term for update?
  get 'new', to: 'pokemons#new', as: 'new'
  post 'create', to: 'pokemons#create', as: 'create'
  patch 'heal', to: 'pokemons#heal', as: 'heal'
end
