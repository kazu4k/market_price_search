Rails.application.routes.draw do
  devise_for :users
  root to: 'searches#index'
  resources :searches do
    collection do
      get 'search'
      get 'login'
    end
  end
end
