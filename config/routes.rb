Rails.application.routes.draw do
  namespace :api do
    resources :users do
      resources :goals, only: [:index, :create, :update, :destroy]

      resources :journal_entries, only: [:index, :create]
    end

    resources :advice_posts, only: [:index, :create]
  end
end
