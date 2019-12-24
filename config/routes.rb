Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', 
                                    registrations: 'users/registrations', 
                                    passwords: 'users/passwords', 
                                    confirmations: 'users/confirmations',
                                    profile: 'users/profile', 
                                    edit: 'users/edit' 
                                  }

  root to: 'events#index'

  resources :users, only: [:show] do
  end

  resources :events, only: [:index] do
  end
  
  resources :clubs, only: [:index, :show] do
    get 'bde', to: 'clubs#bde', as: :bde
  end
  get 'calendar', to: 'clubs#calendar', as: :calendar
end
