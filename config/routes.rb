Rails.application.routes.draw do
  
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
  
  resources :manage_dishes
  resources :manage_orders
  resources :manage_clients, only: [:index, :update]
  mount ActionCable.server => '/cable'
  scope module: :api do
    resources :user_logs
    get '/user_logs/params/:email/:password', to: 'user_logs#verify_params', email: /[^\/]+/

    get '/orders/filter', to: 'orders#order_filtred'
    resources :orders
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
    resources :orders
    resources :dishes
  end

  root "dashboards#index"
end
