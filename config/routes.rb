Rails.application.routes.draw do
  namespace :api do
    resources :goals, only: [:new, :create, :update, :destroy]

    resources :users, only: [:create, :show, :update]

    resources :journal_entries, only: [:index, :create]

    resources :advice_posts, only: [:index, :create]

  end
end
