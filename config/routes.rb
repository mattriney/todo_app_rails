Rails.application.routes.draw do
  resources :lists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html4

  root 'sessions#home'

  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]

  get '/login', to: 'sessions#login'
  post'/login', to: 'sessions#create'
  post'/login', to: 'sessions#destroy'
  get'/login', to: 'sessions#destroy'

end
