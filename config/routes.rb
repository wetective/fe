Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/investigations/:id', to: 'investigations#show'
  get '/investigations', to: 'investigations#index'

end
