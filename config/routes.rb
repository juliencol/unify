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

  resources :events, only: [:index, :show, :edit, :update, :destroy] 

  resources :clubs, only: [:index, :show, :edit, :update] do
    resources :events, only: [:new, :create] 
    get "bde", to: "clubs#bde", as: :bde
    get "members", to: "clubs#members", as: :members
  end
end



