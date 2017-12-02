Rails.application.routes.draw do
  resources :goals, only: [:new, :create, :update, :destroy]
end
