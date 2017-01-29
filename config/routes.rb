Rails.application.routes.draw do

  root to: 'users#index'

  #on this route use the 'UsersController' with new action with the hash as new_user
  get '/users/new' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show'
  resources :users

  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'
  post '/sessions' => 'sessions#create'

  get '/libraries' => 'libraries#index'
  get '/libraries/new' => 'libraries#new'
  post '/libraries' => 'libraries#create'
  get '/libraries/:id' => 'libraries#show'
  resources :libraries

  get '/users/:id/libraries', to: 'library_users#index', as: 'user_libraries'
  post '/libraries/:library_id/users', to: 'library_users#create', as: 'library_users'

end
