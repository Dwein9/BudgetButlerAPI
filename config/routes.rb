Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :savings
      resources :goals
      resources :transactions
      resources :expenses
      resources :incomes
      resources :users
      post '/signup', to: "users#create"
      post '/signin', to: "sessions#create"
      post '/month/:id', to: "transactions#month"
    end
  end
end
