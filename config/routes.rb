Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  namespace :api do
    resources :users do
      resources :goals, only: [:index, :create, :update, :destroy]

      resources :journal_entries, only: [:index, :create]
    end

    resources :advice_posts, only: [:index, :create]
  end
end
