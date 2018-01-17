Rails.application.routes.draw do

  resources :sessions
  get 'sessions/new'

  get 'auth/facebook/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')

  resources :users
  get 'tags/:tag', to: 'posts#index', as: "tag"
  resources :posts, only: [:create]
  root 'posts#index'
end
