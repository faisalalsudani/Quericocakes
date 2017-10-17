Rails.application.routes.draw do

  devise_for :users
  
  resources :biographies
  resources :posts
  resources :orders
  resources :photos
  
end
