Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'landing#index'
  get '/login', to: 'landing#login'

  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  
  get '/investigations', to: 'investigations#index'
  get '/investigations/:id', to: 'investigations#show'

  resources :locations, only: [:index, :show]
end
