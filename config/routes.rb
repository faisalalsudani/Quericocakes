Rails.application.routes.draw do

  get 'contact-me', to: 'contacts#new', as: 'new_message'
  post 'contact-me', to: 'contacts#create', as: 'create_message'


  devise_for :users, controllers: { registrations: "users" }
  root 'homepages#index'
  resources :biographies
  resources :posts
  resources :orders
  resources :photos

end
