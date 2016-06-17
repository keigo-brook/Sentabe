Rails.application.routes.draw do
  root 'static_pages#home'
  resources :machine_types
  resources :machines
  resources :sensors
  resources :data_types do
    resources :sensor_data
    resources :float_data, controller: :sensor_data, type: 'FloatDatum'
    resources :int_data, controller: :sensor_data, type: 'IntDatum'
    resources :text_data, controller: :sensor_data, type: 'TextDatum'
    resources :time_data, controller: :sensor_data, type: 'TimeDatum'
  end

  namespace :api, {format: 'json'} do
    resources :sensor_data
  end
end
