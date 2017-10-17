Rails.application.routes.draw do

  resources :biographies
  devise_for :users
  resources :posts
  resources :photos
  
end
