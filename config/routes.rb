Rails.application.routes.draw do

 

 

  

  scope "(:locale)", locale: /en|es|kr/ do
    get 'login', to: 'sessions#new', as: 'login'
    get 'logout', to: 'sessions#destroy', as: 'logout'
    match '/send_mail', to: 'contact#send_mail', via: 'post'

    root to: 'home#index'
    get 'services/automotive'
    get 'services/accounting'
    get 'services/healthcare'
    get 'services/manufacturing'
    get 'services/office'
    get 'services/it'
    get 'staffing/highvolume'
    get 'staffing/onsite'
    
    resources :posts, path: 'news'
    resources :sessions, only: [:new, :create, :destroy]
    resources :about, only: [:index]
    #resources :employers, only: [:index]
    resources :contact, only: [:index]
    resources :services, only: [:index]
    resources :staffing, only: [:index]
    
    resources :directhire, only: [:index]
    resources :consultation, only: [:index]
    resources :rpo, only: [:index]
  
    resources :unapproved_jobs
    resources :jobs do
      collection do
        put :approve
      end
    end
    resources :users
  end
  
  get '*path', to: redirect("/#{I18n.default_locale}/%{path}"), constraints: lambda { |req| !req.path.starts_with? "/#{I18n.default_locale}/" }
  get '', to: redirect("/#{I18n.default_locale}")
end
