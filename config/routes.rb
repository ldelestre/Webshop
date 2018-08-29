Rails.application.routes.draw do

<<<<<<< HEAD
	devise_for :users
	resources :charges

	root 'home#index'

	get '/cart', to: 'carts#cart'
	get '/items/all', to: 'items#listing'

end
=======
	  get 'items/all', to: 'items#listing'
	  devise_for :users
	  get 'home/index'
	  root 'home#index'
	  resources :charges
	  get '/account', to: 'home#account'
	  get '/cart', to: 'carts#cart'
	  get '/items/all', to: 'items#listing'
	  
end
>>>>>>> Developpement
