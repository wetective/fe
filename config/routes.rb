Rails.application.routes.draw do
  root 'landing#index'

  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  
  get '/register', to: 'sessions#register'
  post '/register', to: 'sessions#user_create'

  get '/login', to: 'sessions#login', as: 'login'
  post '/login', to: 'sessions#user_login'
  get '/logout', to: 'sessions#destroy'

  get '/locations/results', to: 'locations#results', as: 'results'

  get '/team', to: 'basics/team#index', as: 'team'

  get '/about', to: 'basics/about#index', as: 'about'

  get '/contact', to: 'basics/contact#index', as: 'contact'

  get '/faq', to: 'basics/faq#index', as: 'faq'
  
  resources :users do
    get '/', to: 'users#index', as: 'dashboard'
    resources :tips
    resources :investigations
    resources :locations
  end
end
