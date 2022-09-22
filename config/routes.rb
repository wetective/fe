Rails.application.routes.draw do
  root 'landing#index'
  
  get '/auth/google_oauth2', to: 'sessions#create', as: 'oauth_login'
  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  
  get '/login', to: 'sessions#login', as: 'login'
  get '/logout', to: 'sessions#destroy', as: 'logout'

  get '/signup', to: 'users#signup', as: 'signup'

  resources :users do
    get '/dashboard', to: 'dashboard#index', as: 'dashboard'
  end
  
  resources :locations, only: [:index]
  resources :investigations, only: [:index, :show]
  resources :sessions, only: [:new, :create]
end