Rails.application.routes.draw do
  root to: 'top#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: %i(index show)
  resources :reactions, only: %i(create)
  resources :matching, only: %i(index)
  resources :chat, only: %i(create show)
end
