Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords', confirmations: 'users/confirmations',profile: 'users/profile', edit: 'users/edit' }
  
  root to: 'events#index'
  get '/users', to: 'users#show', as: '/profile'
  get 'users/edit'
  get '/events', to: 'events#index', as: '/events'
  get '/clubs', to: 'clubs#index', as: '/clubs'
  get '/calendar', to: 'clubs#calendar', as: '/calendar'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
