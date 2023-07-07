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
  
  devise_for :users, :controllers => { sessions: 'users/sessions' }, path_names: { sign_in: 'login',
    sign_out: 'logout', 
    password: 'secret', 
    confirmation: 'verification', 
    unblock: 'unblock', 
    registration: 'register', 
    sign_up: 'sign_up'}

  scope module: :api do
    get '/clients/params/:email/:password', to: 'clients#verify_params', email: /[^\/]+/

    resources :clients
    resources :dishes, only: [:index]
  end

  scope module: :api do
    put '/orders/params/:id', to: 'orders#update_params'
    
    get '/user_logs/params/:email/:password', to: 'user_logs#verify_params', email: /[^\/]+/

    get '/orders/params/:client_id', to: 'orders#order_client', name: /[^\/]+/ 
    
    get '/dishes_for_name/:name', to: 'dishes#dishes_for_name'

    resources :user_logs 
    resources :orders
    mount ActionCable.server => '/cable'

    resources :dishes, only: [:index]
  end

  root "dashboards#index"
end
