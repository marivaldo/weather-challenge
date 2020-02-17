Rails.application.routes.draw do
  resources :cities
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :dashboard
  get 'dashboard/index'

  namespace :api, dafaults: {format: :json} do
    resources :weather, only: [:index]
  end

  root 'home#index'
end
