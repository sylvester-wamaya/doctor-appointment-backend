Rails.application.routes.draw do
  resources :users, only: [:index, :create, :destroy]

  root "users#index"
end
