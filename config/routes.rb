Rails.application.routes.draw do





  root to: "services#index"

  resources :customers
  resources :bookings
  resources :services, only: [:index, :new, :create, :show]
  resources :service_providers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
