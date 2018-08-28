Rails.application.routes.draw do
  get 'items/all', to: 'items#listing'
  devise_for :users
  get 'home/index'
  root 'home#index'
  resources :charges
end

