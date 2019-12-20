Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords', confirmations: 'users/confirmations' }
  root to: 'events#index'
  get '/events', to: 'events#index', as: '/events'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
