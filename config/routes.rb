Rails.application.routes.draw do
  resources :conflicts
  resources :controls
  resources :responsibilities
  resources :cycles
  resources :users
  resources :companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
