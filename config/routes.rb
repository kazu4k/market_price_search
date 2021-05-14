Rails.application.routes.draw do
  devise_for :users
  root to: 'searches#index'
  resources :searches, only: :index
end
