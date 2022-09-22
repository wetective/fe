Rails.application.routes.draw do
  root 'landing#index'
  
  get '/auth/google_oauth2', to: 'sessions#create', as: 'oauth_login'
  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  
  get '/login', to: 'sessions#login', as: 'login'
  post '/login', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy'

  get '/register', to: 'sessions#register'
  post '/register', to: 'sessions#create'

  get '/locations/results', to: 'locations#results', as: 'results'

  resources :users do
    get '/dashboard', to: 'dashboard#index', as: 'dashboard'
  end
  
  resources :investigations, only: [:index, :show]
  resources :locations, only: [:index, :show]
end
