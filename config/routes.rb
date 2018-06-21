Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  post "sessions", to: "sessions#create", as: "sessions"

  resources :users, only: [:show, :new, :create]
  resources :schedules #, only: [:show, :new, :create, :update, :edit, :destroy]
  resources :habits, only: [:show, :new, :create, :edit, :update] #we're using all of them right now but this can be refactored
end
