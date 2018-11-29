Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  root 'home#index'
  devise_for :users
  resources :items
  resources :charges, only: [:new, :create]


scope 'superadmin', module: 'admin', as: 'admin' do
  resources :orders
  resources :carts



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
end
