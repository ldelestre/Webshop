Rails.application.routes.draw do

	  get 'items/all', to: 'items#listing'
	  devise_for :users
	  get 'home/index'
	  root 'home#index'
	  resources :charges
	  get '/account', to: 'home#account'
	  get '/cart', to: 'carts#cart'
	  get '/items/all', to: 'items#listing'
	  
end