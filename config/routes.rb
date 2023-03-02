Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :pages, only: [:index] do
    post 'search', to: 'pages#search'
  end
  resources :users, only: [:index, :show, :new, :create, :edit]
  resources :categories, only: [:index, :new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
