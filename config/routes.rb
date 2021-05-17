Rails.application.routes.draw do
  devise_for :users
  root to: 'searches#index'
  resources :searches do
    collection do
      get 'search'
    end
  end
end
