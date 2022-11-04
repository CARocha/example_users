Rails.application.routes.draw do
  resources :seens, only: [:create, :index]
  resources :announcements
  devise_for :accounts
  root to: "home#index"
end
