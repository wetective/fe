Rails.application.routes.draw do
  root 'landing#index'
  
  get '/locations/reveal', to: 'locations#reveal', as: 'reveal'
  
  resources :investigations, only: [:index, :show]
  resources :locations, only: [:index]
end
