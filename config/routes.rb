Rails.application.routes.draw do
  # Admin routes
  mount RailsAdmin::Engine => '/super_admin', as: 'rails_admin'
  authenticate :user, ->(user) { user.super_admin? } do
    mount Blazer::Engine, at: "blazer"
  end

  # Devise routes
  devise_for :users,
  controllers: { sessions: 'users/sessions',
                  registrations: 'users/registrations',
                  passwords: 'users/passwords',
                  confirmations: 'users/confirmations',
                  profile: 'users/profile',
                  edit: 'users/edit'
                }            
  root to: 'events#index'

  # Service Worker Routes
  get '/manifest.json' => "service_worker#manifest"

  # Application routes
  get "about", to: "pages#about", as: :about
  resources :users, only: [:show, :edit, :update] do 
    get "events", to: "users#events"
  end
  resources :events, only: [:index, :show, :edit, :update, :destroy] do
     post "register_to_event", to: 'users#register_to_event'
  end
  resources :clubs, only: [:index, :show, :edit, :update] do
    resources :events, only: [:new, :create]
    # get "manage_accesses", to: "clubs#manage_accesses", as: :accesses
    get "bde", to: "clubs#bde", as: :bde
    get "partners", to: "clubs#partners", as: :partners
    get "project", to: "clubs#project", as: :project
    get "members", to: "clubs#members", as: :members
  end
end



