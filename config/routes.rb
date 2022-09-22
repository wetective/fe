Rails.application.routes.draw do
  root 'landing#index'
  
  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  
  get '/register', to: 'sessions#register', as: 'signup'
  post '/register', to: 'sessions#create'
  
  get '/login', to: 'sessions#login', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :locations, only: [:index, :show]
end
