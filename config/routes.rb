Rails.application.routes.draw do
  root 'landing#index'
  
  get '/auth/google_oauth2/callback', to: 'sessions#omniauth', as: 'oauth_login'
  get '/auth/google_oauth2', to: 'sessions#create'
  
  get '/dashboard', to: 'dashboard#index'
  
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'

  resources :users do
    get '/dashboard', to: 'dashboard#index', as: 'dashboard'
  end
  
  resources :investigations, only: [:index, :show]
  resources :locations, only: [:index]
end
