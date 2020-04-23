Rails.application.routes.draw do
  resources :places
  resources :scout_branches
  resources :competences
  resources :game_types
  resources :games
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
