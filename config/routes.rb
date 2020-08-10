Rails.application.routes.draw do
	root "home#index"

	get '/about', to: "home#about"
	get '/contact', to: "home#contact"

  resources :projects
  resources :contextual_objects
  resources :posts
  
  devise_for :users
  resources :users, only: [:show], as: "profile"
end
