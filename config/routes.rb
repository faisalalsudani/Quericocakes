Rails.application.routes.draw do
  devise_for :users

  root 'homepages#index'

  resources :biographies
  resources :posts
  resources :orders
  resources :photos

end
