Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'landing#index'
  
  get '/investigations', to: 'investigations#index'
  get '/investigations/:id', to: 'investigations#show'

  get '/register', to: 'users#new'
  post '/register', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/map', to: 'map#index'

  resources :locations, only: [:index, :show]
end
