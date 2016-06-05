Rails.application.routes.draw do
  root 'static_pages#home'
  resources :machine_types
  resources :machines
  resources :sensors
  resources :data
end
