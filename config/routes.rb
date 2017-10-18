Rails.application.routes.draw do
  resources 'contacts', only: [:new, :create], path_names: { new: '' }
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  get 'contacts/create'

  devise_for :users, controllers: { registrations: "users" }
  root 'homepages#index'
  resources :biographies
  resources :posts
  resources :orders
  resources :photos

end
