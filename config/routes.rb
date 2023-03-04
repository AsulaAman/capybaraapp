Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :pages, only: [:index] do
    post 'search', to: 'pages#search'
  end
  resources :users, only: [:index, :show, :new, :create, :edit] do
    member do
      post 'toggle_favorite', to: "users#toggle_favorite", as: :user
    end
  end
  resources :categories, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
