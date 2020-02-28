Rails.application.routes.draw do
  devise_for :users,
  controllers: { sessions: 'users/sessions',
                  registrations: 'users/registrations',
                  passwords: 'users/passwords',
                  confirmations: 'users/confirmations',
                  profile: 'users/profile',
                  edit: 'users/edit'
                }
  root to: 'events#index'
  resources :users, only: [:show, :edit, :update]
  resources :events, only: [:index, :show]

  resources :activities, only: [:index]

  resources :clubs, only: [:index, :show, :new, :create, :edit, :update] do
    get "bde", to: "clubs#bde", as: :bde
    get "apply", to: "clubs#apply", as: :apply
    get "members", to: "clubs#members", as: :members
  end
  get "calendar", to: "clubs#calendar", as: :calendar
end
