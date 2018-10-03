Rails.application.routes.draw do
  resources :cart_items
  resources :items
  resources :carts
  resources :users
  resources :categories
  root to: 'pages#index'
  root 'application#hello'
  get '/login' => 'users#new'
  post '/login' => 'users#create'
  post '/logout' => 'users#destroy'
  get '/search' => 'items#search'
  post '/carts/:id/edit' => 'cart_items#destroy'
end
