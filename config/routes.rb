Rails.application.routes.draw do
  devise_for :users
  root 'messages#index'

  resources :messages
  resources :current_locations
  resources :users
end
