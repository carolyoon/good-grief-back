Rails.application.routes.draw do
<<<<<<< HEAD

  resources :goals, only: [:create, :update, :destroy]

  resources :users, only: [:create, :show, :update]

  resources :journal_entries, only: [:index, :create]

=======
>>>>>>> development
  namespace :api do
    resources :goals, only: [:new, :create, :update, :destroy]

    resources :users, only: [:create, :show, :update]
<<<<<<< HEAD
  end
=======
    
    resources :journal_entries, only: [:index, :create]
  end    
>>>>>>> development
end
