Rails.application.routes.draw do
  root to: 'home#index'

  resources :about, only: [:index]
  resources :employers, only: [:index]
end
