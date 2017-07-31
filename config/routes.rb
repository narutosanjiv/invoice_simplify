Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'items#index', as: :item_index

  match '/orders', to: 'orders#create', via: :post, as: :create_order
  match '/orders', to: 'orders#index', via: :get, as: :orders_index
  match '/checkout', to: 'orders#checkout', via: :get, as: :checkout_orders
  match '/cart', to: 'orders#cart', via: :get, as: :cart_orders
  
  match '/order_items', to: 'order_items#create', via: :post, as: :create_order_item
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
