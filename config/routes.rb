Rails.application.routes.draw do
  resources :cart_items
  resources :items
  resources :carts
  resources :users
  resources :cart_items
  resources :categories
  root to: 'pages#index'
  root 'application#hello'
  get '/login' => 'users#new'
  post '/login' => 'users#create'
  post '/logout' => 'users#destroy'
  get '/search' => 'items#search'
  get '/add_to_cart/:item_id' => 'cart_items#add_item_to_cart' 
  
 
end
