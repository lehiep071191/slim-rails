Rails.application.routes.draw do
  get 'update_orders/update'
  get 'orders/show'
  get 'avatars/edit'
  root 'products#index'
  resources :posts
  resources :avatars
  resource :carts
  resources :products
  resources :orders
  resources :order_details
  resources :update_orders, only: :update
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
