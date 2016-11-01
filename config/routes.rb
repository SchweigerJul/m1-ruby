Rails.application.routes.draw do
  resources :limits
  resources :expenses, :overview
  get 'expenses/index'
  get '/expenses/:id/log', to: 'expenses#log', as: "log"
  get 'overview/index'



  root 'expenses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
