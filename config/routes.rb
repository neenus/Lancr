Rails.application.routes.draw do

  root to: "services#index"

  resources :customers
  resources :bookings, only: [:index, :new, :create, :show]
  resources :services, only: [:index, :new, :create, :show] do
    post :book, to: 'bookings#create'
    post :charge, to: 'charges#create'
    get :charge, to: 'charges#create'
  end

  resources :service_providers
  resources :customer_sessions

  resources :charges
  # resources :charges

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


  # customer login routes
  get '/login' => 'customer_sessions#new'
  post '/login' => 'customer_sessions#create'
  get '/logout' => 'customer_sessions#destroy'
  post '/logout' => 'customer_sessions#destroy'

  # customer sigup routes
  get '/signup' => 'customers#new'
  post '/customers' => 'customers#create'

  # service provider login routes
  get '/sp-login' => 'service_provider_sessions#new'
  post '/sp-login' => 'service_provider_sessions#create'
  get '/sp-logout' => 'service_provider_sessions#destroy'
  post '/sp-logout' => 'service_provider_sessions#destroy'

  # service provicer signup routes
  get '/sp-signup' => 'service_providers#new'
  post '/service_providers' => 'service_providers#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
