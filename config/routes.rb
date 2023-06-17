Rails.application.routes.draw do
  resources :clients
  resources :dashboards
  resources :dishes
  resources :users
  resources :orders
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "dashboards#index"
end
