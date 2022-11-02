Rails.application.routes.draw do
  resources :announcements
  devise_for :accounts
  root to: "home#index"
end
