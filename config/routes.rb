Rails.application.routes.draw do
  resources :items
  resources :carts
  resources :users
  root to: 'pages#index'
end
