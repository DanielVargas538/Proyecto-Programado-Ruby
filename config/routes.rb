Rails.application.routes.draw do
  
  resources :manage_dishes
  resources :manage_orders
  resources :manage_users
  resources :manage_clients
  
  resources :manage_users do
    member do
      patch :toggle_block
    end
  end

  namespace :api do
    resources :user_logs do
      member do
        patch :toggle_block
      end
    end
  end  
  
  devise_for :users , path_names: { sign_in: 'login', 
    sign_out: 'logout', 
    password: 'secret', 
    confirmation: 'verification', 
    unblock: 'unblock', 
    registration: 'register', 
    sign_up: 'sign_up'}

  scope module: :api do
    resources :clients
    resources :dishes, only: [:index]
  end

  scope module: :api do
    get '/user_logs/params/:email/:password', to: 'user_logs#verify_params', email: /[^\/]+/

    resources :user_logs
    resources :orders
    mount ActionCable.server => '/cable'
  end

  root "dashboards#index"
end
