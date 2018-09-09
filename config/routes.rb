Rails.application.routes.draw do
  resources :logs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "welcome#home"

  # get    '/signup',  to: 'users#new'
  # get    '/login',   to: 'sessions#new'
  # post   '/login',   to: 'sessions#create'
  # delete '/logout',  to: 'sessions#destroy'

  resources :schedules
  resources :scheduled_habits
  resources :habits, only: [:show, :new, :create, :edit, :update] #we're using all of them right now but this can be refactored
  devise_for :users, :controllers => { :registrations => "users/registrations" }

end
