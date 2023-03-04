Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :pages, only: [:index]
  resources :users, only: [:index, :show, :new, :create, :edit] do
    get 'search', to: 'users#search'
  end
  resources :categories, only: [:index]
  resources :chatrooms, only: [:show] do
    resources :messages, only: [:create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
