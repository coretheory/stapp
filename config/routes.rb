Rails.application.routes.draw do
	root to: "projects#gallery"

	get '/about', to: "home#about"
	get '/contact', to: "home#contact"

  resources :projects
  get '/gallery', to: "projects#gallery"
  get '/arc-design', to: "projects#arc_design_index"
  get '/graphic-design', to: "projects#graphic_design_index"
  get '/illustration', to: "projects#illustration_index"
  get '/product-design', to: "projects#product_design_index"

  resources :posts
  
  devise_for :users
  resources :users, only: [:show], as: "profile"
end
