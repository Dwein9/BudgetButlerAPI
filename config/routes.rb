Rails.application.routes.draw do
  resources :savings
  resources :goals
  resources :transactions
  resources :expenses
  resources :incomes
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
