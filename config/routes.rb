Rails.application.routes.draw do

  get 'routes', to: 'routes#show'
  post 'routes', to: 'routes#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
