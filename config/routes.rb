Rails.application.routes.draw do

  
  resources :profiles
  devise_for :account_holders, controllers: {registrations: "account_holders/registrations" }
  resources :pages
  resources :restaurants

  get 'confirm', to: :confirm, controller: 'account_holders'

  root to: 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
