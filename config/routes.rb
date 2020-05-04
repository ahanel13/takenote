Rails.application.routes.draw do
  root 'home#index'
  get 'about/index'

  devise_for :users, module: "users", controllers: { sessions: 'users/sessions' }

  resources :dashboard, only: [:index]
  resources :users
  resources :notes
  resources :schools
  resources :courses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
