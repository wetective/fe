Rails.application.routes.draw do
  root 'landing#index'
  
  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  
  get '/register', to: 'sessions#register'
  post '/register', to: 'sessions#user_create'

  get '/login', to: 'sessions#login', as: 'login'
  post '/login', to: 'sessions#user_login'
  get '/logout', to: 'sessions#destroy'

  get '/locations/results', to: 'locations#results', as: 'results'

  resources :users do
    get '/', to: 'users#index', as: 'dashboard'
    resources :tips
  end
  
  resources :investigations, only: [:index, :show]
  resources :locations, only: [:index, :show]
end
