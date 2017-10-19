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
  post '/otherproducts/cakesicles', to: 'otherproducts#cakesicles_create'

  get '/otherproducts/meringue', to: 'otherproducts#meringue'
  post '/otherproducts/meringue', to: 'otherproducts#meringue_create'

  get '/otherproducts/cupcakes', to: 'otherproducts#cupcakes'
end
