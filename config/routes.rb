Rails.application.routes.draw do
  root to: 'users#index'

  #on this route use the 'UsersController' with new action with the hash as new_user
  get '/users/new', to: 'users#new', as: 'new_user'
  resources :users
end
