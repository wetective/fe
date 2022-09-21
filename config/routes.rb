Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'landing#index'
  
  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  
  get '/dashboard', to: 'dashboard#index'
  get '/investigations', to: 'investigations#index'
  get '/investigations/:id', to: 'investigations#show'
  
  get '/login', to: 'sessions#login'
  get '/register', to: 'sessions#register'
  # post '/register', to: 'sessions#create'

  # get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/map', to: 'map#index'

  resources :locations, only: [:index, :show]
end
