Rails.application.routes.draw do

  resources :doctors
  resources :users
  resources :appointments
  
  root "users#index"
end
