Rails.application.routes.draw do
  resources :blogs do
    resource :title_image, only: [:destroy], module: :blogs
  end
  resources :attendances
  resources :grades, only: [:index]
  resources :courses
  get 'progress', to: 'progress#index'
  devise_for :users
  resources :users, only: [:show, :edit, :update] do
    resource :profile_picture, only: [:destroy], module: :users
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get 'dashboard', to: 'pages#home'
  get 'settings', to: 'pages#settings'
  get 'profile', to: 'users#show'
  get 'help', to: 'pages#help'
  get 'logged_out', to: 'pages#logout', as: :logged_out
  
  # Defines the root path route ("/")
  authenticated :user do
    root to: 'pages#home', as: :authenticated_root
  end
  
  # Unauthenticated users are redirected to login
  root to: redirect('/users/sign_in')
end
