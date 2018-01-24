Rails.application.routes.draw do

  
  devise_for :owners, path: 'owners', controllers: 
    {registrations: "owners/registrations", 
     sessions: "owners/sessions",
     passwords: "owners/passwords"  }

  devise_for :account_holders, path: 'account_holders', controllers: 
    {registrations: "account_holders/registrations",
     sessions: "account_holders/sessions", 
     passwords: "account_holders/passwords" }

  resources :profiles, only: [:show, :edit, :update]

  get 'dashboard', to: 'owners#dashboard'

  get 'confirm', to: :confirm, controller: 'account_holders'
  
  root to: 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
