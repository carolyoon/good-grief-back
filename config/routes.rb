Rails.application.routes.draw do
  namespace :api do
    resources :goals, only: [:new, :create, :update, :destroy]

    resources :users, only: [:create, :show, :update]
  end    
end
