Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'landing#index'
  # get '/login', to: 'landing#login'

  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  
  get '/dashboard', to: 'dashboard#index'
  get '/investigations', to: 'investigations#index'
  get '/investigations/:id', to: 'investigations#show'
  
  get '/login', to: 'sessions#login'
  get '/register', to: 'sessions#register'
  # post '/register', to: 'sessions#create'

  get '/register', to: 'users#new', as: 'signup'
  post '/register', to: 'users#create'

  namespace :auth do
    get '/login', to: 'sessions#new', as: 'login'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
  end
  
  get '/map', to: 'map#index'

  resources :locations, only: [:index, :show]
end
