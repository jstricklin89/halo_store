Rails.application.routes.draw do
  resources :cart_items
  resources :items
  resources :carts
  resources :users
  resources :cart_items
  resources :categories
  resources :sessions, only: [:create]
  get 'sessions/new'

  get '/login', to: 'sessions#new'
  delete '/sessions', to: 'sessions#destroy'
  
  root to: 'pages#index'
  root 'application#hello'
  
  get '/search' => 'items#search'
  get '/add_to_cart/:item_id' => 'cart_items#add_item_to_cart' 
 
end
