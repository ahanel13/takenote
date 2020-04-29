Rails.application.routes.draw do
  devise_for :users, controllers: {
    confirmations: 'confirmations'
  }
  root 'home#index'
  resources :dashboard, only: [:index]
  resources :users
  resources :courses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
