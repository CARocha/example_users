Rails.application.routes.draw do
  resources :seens, only: [:create, :index]
  resources :announcements
  devise_for :accounts
  get '/about', to: 'home#about'
  root to: "home#index"
end
