Rails.application.routes.draw do
  
  resources :manage_users
  
  resources :manage_dishes
  resources :manage_orders
  resources :manage_clients

  devise_for :users , path_names: { sign_in: 'login', 
    sign_out: 'logout', 
    password: 'secret', 
    confirmation: 'verification', 
    unblock: 'unblock', 
    registration: 'register', 
    sign_up: 'sign_up'}

  scope module: :api do
    resources :clients
    resources :orders
    resources :dishes
    resources :user_logs
  end

  root "dashboards#index"
end
