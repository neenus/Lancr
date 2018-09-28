Rails.application.routes.draw do

<<<<<<< HEAD


  resources :services, only: [:index, :new, :create, :show]


=======
  
  
  root to: "services#index"
  
  resources :customers
  resources :services
  
>>>>>>> master
  resources :service_providers
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
