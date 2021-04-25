Rails.application.routes.draw do
  resources :posts
  # Add a root route if you don't have one...
  # We can use users#new for now, or replace this with the controller and action you want to be the site root:
  root to: 'welcome#index'

  # sign up page with form:
  post '/register' => 'users#create', as: :create_user

  # create (post) action for when sign up form is submitted:



  # log in page with form:
  get '/login' => 'sessions#new', as: :login

  # create (post) action for when log in form is submitted:
  post '/login' => 'sessions#create'

  # delete action to log out:
  delete '/logout' => 'sessions#destroy', as: :logout
  
  # OPTIONAL secret page (requires a user to be signed in):
  get 'pages/secret' => 'pages#secret'

end