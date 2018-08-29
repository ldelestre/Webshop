Rails.application.routes.draw do
<<<<<<< HEAD
  get 'items/all', to: 'items#listing'
  devise_for :users
  get 'home/index'
  root 'home#index'
  resources :charges
  get '/account', to: 'home#account'
=======

	devise_for :users
	resources :charges

	root 'home#index'

	get '/cart', to: 'carts#cart'
	get '/items/all', to: 'items#listing'
	get '/home/index'

>>>>>>> a8f7a204bbd294e54714338aa66618c856a279f9
end