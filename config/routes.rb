Rails.application.routes.draw do
  root 'landing#index'
  
  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  
  get '/dashboard', to: 'dashboard#index'
  
  get '/login', to: 'sessions#login'
  get '/register', to: 'sessions#new'
  post '/register', to: 'sessions#create'

  resources :users do
    get '/dashboard', to: 'dashboard#index', as: 'dashboard'
  end
  
  resources :investigations, only: [:index, :show]
  resources :locations, only: [:index]
end
