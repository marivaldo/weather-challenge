Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'dashboard/index'

  namespace :api, dafaults: {format: :json} do
    resources :weather, only: [:index]
  end

  root 'dashboard#index'
end
