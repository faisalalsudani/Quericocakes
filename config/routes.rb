Rails.application.routes.draw do

  get 'contact-me', to: 'contacts#new', as: 'new_message'
  post 'contact-me', to: 'contacts#create', as: 'create_message'


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
