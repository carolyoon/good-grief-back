Rails.application.routes.draw do

  resources :goals, only: [:new, :create, :update, :destroy]

  resources :users, only: [:create, :show, :update]

  resources :journal_entries, only: [:index, :create]
end
