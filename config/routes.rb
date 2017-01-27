Rails.application.routes.draw do
  root to: 'users#index'

  #on this route use the 'UsersController' with new action with the hash as new_user
  get '/users/new' => 'users#new'
  post '/users' => 'users#create'
  resources :users
end
