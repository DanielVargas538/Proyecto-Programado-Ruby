Rails.application.routes.draw do
  resources :orders
  resources :dashboards
  resources :dishes
  resources :users

  scope module: :api do
    resources :clients
  end

  root "dashboards#index"
end
