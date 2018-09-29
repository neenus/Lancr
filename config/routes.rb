Rails.application.routes.draw do





  root to: "services#index"

  resources :customers
  resources :bookings, only: [:index, :new, :create, :show]
  resources :services, only: [:index, :new, :create, :show] do
    post :book, to: 'bookings#create'
  end
  resources :service_providers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
