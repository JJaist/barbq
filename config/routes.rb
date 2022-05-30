Rails.application.routes.draw do
  #devise_for :users
  resources :users
  # корень сайта
  root to: "events#index"
  resources :users, only: [:show, :edit, :update]
  resources :events
end
