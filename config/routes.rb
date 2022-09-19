Rails.application.routes.draw do
  root 'landing#index'
  
  get '/locations/results', to: 'locations#results', as: 'results'
  
  resources :investigations, only: [:index, :show]
  resources :locations, only: [:index]
end
