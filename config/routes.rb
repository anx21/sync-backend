Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions' }
  jsonapi_resources :users
  jsonapi_resources :groups
  post '/create_group', to: 'users#create_group'
end
