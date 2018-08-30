Rails.application.routes.draw do
	devise_for :users
	resources :charges

	root 'home#index'

	get '/cart', to: 'carts#cart'
	get '/items/all', to: 'items#listing'

	get '/single', to: 'home#single'
	get '/product', to: 'home#product'
	get '/about', to: 'home#about'
	get '/contact', to: 'home#contact'

	get '/react-element-83-sail', to: 'home#sneakers-1'
	get '/react-element-83-black', to: 'home#sneakers-2'
	get '/react-element-83-desert-sand', to: 'home#sneakers-3'
	get '/off-white-jordan-1-chicago', to: 'home#sneakers-4'
	get '/off-white-jordan-1-nrg', to: 'home#sneakers-5'
	get '/off-white-jordan-1-unc', to: 'home#sneakers-6'
	get '/nike-air-max-1-97-sean-wotherspoon', to: 'home#sneakers-7'
	get '/nike-spiridon-parra', to: 'home#sneakers-8'
	get '/nike-air-max-1-dlx', to: 'home#sneakers-9'
	get '/yeezy-boost-350-turtle-dove', to: 'home#sneakers-10'
	get '/yeezy-boost-350-tan', to: 'home#sneakers-11'
	get '/yeezy-boost-350-pirate-black', to: 'home#sneakers-12'
	get 'air-jordan-1-fragment-design', to: 'home#sneakers-13'
	get 'air-jordan-1-shattered-backboard', to: 'home#sneakers-14'
	get 'air-jordan-1-black-toe', to: 'home#sneakers-15'
	get 'off-white-air-presto-og', to: 'home#sneakers-16'
	get 'off-white-zoom-fly', to: 'home#sneakers-17'
	get 'off-white-air-force-1', to: 'home#sneakers-18'
	get 'air-max-180-ultramarine', to: 'home#sneakers-19'
	get 'air-max-180-easter-egg', to: 'home#sneakers-20'
	get 'air-max-180-cdg-black', to: 'home#sneakers-21'
end