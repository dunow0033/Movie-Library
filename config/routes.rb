Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  get '/auth/google_oauth2/callback' => 'sessions#omniauth'
  get '/signup', to: 'users#new', as: 'signup'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'
  
  resources :users
  resources :movie_logs
  resources :movies do
    resources :movie_logs
  end
end

  
