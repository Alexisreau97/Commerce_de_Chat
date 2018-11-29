Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  resources :items, :line_items, :orders, :carts
  resources :charges, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
