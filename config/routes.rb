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
                  edit: 'users/edit',
                }            
  root to: 'events#index'

  # Application routes
  get "description", to: "pages#about", as: :about
  # get "tuto", to: "pages#getting_started", as: :getting_started

  resources :users, only: [:show, :edit, :update], :path => "isépiens"
  

  resources :events, only: [:index, :show, :edit, :update, :destroy], :path => "événements" do
    post "register_to_event", to: 'users#register_to_event'
  end

  get "exodus", to: "clubs#bde", as: :bde

  resources :clubs, only: [:index, :show, :edit, :update], :path => "associations" do
    resources :events, only: [:new, :create]
    # get "manage_accesses", to: "clubs#manage_accesses", as: :accesses
    get "partenaires", to: "clubs#partners", as: :partners
    get "projets", to: "clubs#project", as: :project
    get "membres", to: "clubs#members", as: :members
  end

  resources :contests, only: [:index, :show], :path => "concours" do 
    post "envoie", to: 'contests#send_quizz', as: :send_quizz
    post "get_winner", to: 'contests#get_winner'
    post "remove_winner", to: 'contests#remove_winner'
  end

  # error pages
  %w( 404 422 500 ).each do |code|
    get code, :to => "errors#show", :code => code
  end
end



