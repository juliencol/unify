Rails.application.routes.draw do
  get 'users/edit'
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords', confirmations: 'users/confirmations',profile: 'users/profile', edit: 'users/edit' }
  root to: 'events#index'
  get '/events', to: 'events#index', as: '/events'
  get '/users', to: 'users#show', as: '/profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
