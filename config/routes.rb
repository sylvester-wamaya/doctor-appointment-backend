Rails.application.routes.draw do

  resources :doctors
  resources :users, only: [:index, :show, :create, :update, :destroy]
  root "users#index"
end
