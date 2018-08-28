Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "welcome#home"

  # get    '/signup',  to: 'users#new'
  # get    '/login',   to: 'sessions#new'
  # post   '/login',   to: 'sessions#create'
  # delete '/logout',  to: 'sessions#destroy'

  resources :users, only: [:show, :new, :create]
  resources :schedules #, only: [:show, :new, :create, :update, :edit, :destroy]
  resources :habits, only: [:show, :new, :create, :edit, :update] #we're using all of them right now but this can be refactored
end
