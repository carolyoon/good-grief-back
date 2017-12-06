Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'

    post '/api/sessions/refresh', to: 'api/sessions#refresh'
  namespace :api do

    resources :sessions, only: [:create, :destroy]
    resources :users do
      resources :goals, only: [:index, :create, :update, :destroy]

      resources :journal_entries, only: [:index, :create]
    end

    resources :advice_posts, only: [:index, :create]
  end
end
