Rails.application.routes.draw do

  get '/login', to:'sessions#new'

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  root 'sessions#new'



  get 'admin/index'

  resources :admin




  resources :users do
    resources :accounts
 end
 resources :accounts


  resources :accounts do
     resources :transactions
  end

  get 'sessions/new'
  get 'sessions/open'
  get 'sessions/showtransaction'

  resources :transactions


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
