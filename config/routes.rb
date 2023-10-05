Rails.application.routes.draw do
  resources :doctors
  resources :users
  root "users#index"
end
