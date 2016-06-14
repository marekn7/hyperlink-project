Rails.application.routes.draw do
  devise_for :members
  resources :users
  resources :groups
  resources :links

  resources :home, only: [:index]

  root 'home#index'
end
