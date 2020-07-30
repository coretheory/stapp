Rails.application.routes.draw do
  resources :projects
  resources :contextual_objects
  resources :posts
  
  devise_for :users
  resources :users, only: [:show], as: "profile"

  root to: "home#index"
end
