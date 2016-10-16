Rails.application.routes.draw do
  resources :expenses
  get 'expenses/index'

  root 'expenses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
