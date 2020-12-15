require 'sidekiq/web'

Rails.application.routes.draw do
  root to: "home#index"

  resources :audiences

  resources :galleries, except: [:index]
  get '/gallery', to: "galleries#index", as: "index_galleries"

	get '/about', to: "home#about"

  resources :contacts, only: [:edit, :update, :destroy]
  get '/contact', to: "contacts#new", as: "new_contact"
  get '/contact/:id', to: "contacts#show"
  get '/contacts', to: "contacts#index", as: "contacts"
  post '/contact', to: "contacts#create"


  resources :projects
  get '/arc-design', to: "projects#arc_design_index"
  get '/graphic-design', to: "projects#graphic_design_index"
  get '/illustration', to: "projects#illustration_index"
  get '/product-design', to: "projects#product_design_index"

  resources :posts
  
  devise_for :users
  resources :users, only: [:show], as: "profile"

  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end
end
