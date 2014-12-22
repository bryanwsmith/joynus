Rails.application.routes.draw do
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root to: 'home#index'

  resources :sessions, only: [:new, :create, :destroy]
  resources :about, only: [:index]
  resources :employers, only: [:index]
  resources :contact, only: [:index]
  resources :jobs, only: [:index, :new, :create]
end
