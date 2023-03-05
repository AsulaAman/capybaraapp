Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :pages, only: [:index]
  resources :users, only: [:index, :show, :new, :create, :edit] do
    get 'search_map', to: 'users#search_map'
    post 'filter_users_map', to: 'users#filter_users_map'
    get 'the_results', to: 'users#the_results'
  end
  resources :categories, only: [:index]
  resources :chatrooms, only: [:show] do
    resources :messages, only: [:create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
