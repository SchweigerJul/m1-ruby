Rails.application.routes.draw do
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :limits do
  resources :expenses
  end

  get 'expenses/index'
  get '/expenses/:id/log', to: 'expenses#log', as: "log"
  get 'overview/index'
  get 'limits/:id', to: 'expenses#index', as: "expenses"



  root 'overview#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
