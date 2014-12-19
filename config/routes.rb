Rails.application.routes.draw do
  root to: 'home#index'

  resources :about, only: [:index]
  resources :employers, only: [:index]
  resources :contact, only: [:index]
  resources :jobs, only: [:index, :new, :create]
end
