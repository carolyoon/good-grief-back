Rails.application.routes.draw do

  get '/journal_entries'
  post '/journal_entries'

  resources :goals, only: [:new, :create, :update, :destroy]

  resources :users, only: [:create, :show, :update]

  resources :journal_entries, only: [:index, :create]
end
