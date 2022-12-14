Rails.application.routes.draw do
  resources :categories
  devise_for :users

  root 'home#index'

  namespace :admin do
    root to: 'home#index'
    resources :categories
    resources :products
  end
end
