require 'sidekiq/web'

Rails.application.routes.draw do

  devise_for :admins
  resources :meetings do
     resources :comments
    # authenticate :user, lambda { |u| u.admin? } do
    #   mount Sidekiq::Web => '/sidekiq'
   
    end

  devise_for :users
  get 'active-sessions', to: "meetings#active_sessions"
  root to: 'home#index'
  resources :users, only: [:index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
