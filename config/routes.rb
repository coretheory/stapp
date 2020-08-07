Rails.application.routes.draw do
	root to: "home#index"

	get '/about', to: "home#about"

  resources :projects
  resources :contextual_objects
  resources :posts
  
  devise_for :users
  resources :users, only: [:show], as: "profile"
end
