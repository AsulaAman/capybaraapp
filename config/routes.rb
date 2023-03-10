Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :pages, only: [:index] do
    post 'search', to: 'pages#search'
  end
  resources :users, only: [:index, :show, :new, :create, :edit, :update]
  get '/users/:id', to: 'users#show', as: 'profile'

  resources :categories, only: [:index, :new]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
