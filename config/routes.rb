Rails.application.routes.draw do
  resources :users
  resources :groups
  resources :links

  resources :home, only: [:index]

  root 'home#index'
end
