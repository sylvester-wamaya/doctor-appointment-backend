Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create, :destroy]

  root "users#index"
end
