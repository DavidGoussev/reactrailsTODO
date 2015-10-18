Rails.application.routes.draw do
  devise_for :user, only: []

  namespace :todo1, defaults: { format: :json } do
    resource :login, only: [:create], controller: :sessions
    resources :users, only: [:create]
  end
end
