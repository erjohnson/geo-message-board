Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  root 'messages#index'

  resources :messages
  resources :current_locations
  resources :users
end
