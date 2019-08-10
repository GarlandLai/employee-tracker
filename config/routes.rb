Rails.application.routes.draw do
  root to: 'divisions#index'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  resources :divisions do
    resources :employees
  end
end
