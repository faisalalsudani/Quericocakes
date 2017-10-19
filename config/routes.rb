Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users" }
  root 'homepages#index'
  resources :biographies
  resources :posts
  resources :orders
  resources :photos

  get '/otherproducts/cookies', to: 'otherproducts#cookies'
  post '/otherproducts/cookies', to: 'otherproducts#cookies_create'

  get '/otherproducts/cakesicles', to: 'otherproducts#cakesicles'
  get '/otherproducts/meringue', to: 'otherproducts#meringue'
  get '/otherproducts/cupcakes', to: 'otherproducts#cupcakes'
end
