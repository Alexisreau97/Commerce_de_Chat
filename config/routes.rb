Rails.application.routes.draw do
  root 'home#index3'
  devise_for :users
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
