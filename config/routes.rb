Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :pages, only: [:index]
  resources :users, only: [:index, :show, :new, :create, :edit] do
    member do
      get 'toggle_favorite', to: "users#toggle_favorite"
      post 'toggle_favorite', to: "users#toggle_favorite"
    end
    get 'search_map', to: 'users#search_map'
    post 'filter_users_map', to: 'users#filter_users_map'
    get 'the_results', to: 'users#the_results'
  end
<<<<<<< HEAD
  resources :users, only: [:index, :show, :new, :create, :edit, :update]
  get '/users/:id', to: 'users#show', as: 'profile'

  resources :categories, only: [:index, :new]
=======
  resources :categories, only: [:index]
  resources :chatrooms, only: [:show] do
    resources :messages, only: [:create]
  end
>>>>>>> 3a51f367a909ea040d6049ae8e30d10854d36035
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
