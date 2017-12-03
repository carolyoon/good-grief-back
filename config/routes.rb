Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  namespace :api do
    resources :goals, only: [:new, :create, :update, :destroy]

    resources :users, only: [:create, :show, :update]

    resources :journal_entries, only: [:index, :create]

    resources :advice_posts, only: [:index, :create]

  end
end
