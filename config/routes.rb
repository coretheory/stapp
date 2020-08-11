Rails.application.routes.draw do
	root "home#index"

	get '/about', to: "home#about"
	get '/contact', to: "home#contact"

  resources :projects
  get '/gallery', to: "projects#gallery"

  resources :contextual_objects # delete contextual objects
  resources :posts
  
  devise_for :users
  resources :users, only: [:show], as: "profile"
end
