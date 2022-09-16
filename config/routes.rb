Rails.application.routes.draw do
  root 'landing#index'
  
  resources :investigations, only: [:index, :show]
  resources :locations, only: [:index, :show]

  get 'locations/markers', to: 'locations#markers'
end
