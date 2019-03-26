Rails.application.routes.draw do
  resources :trips do 
  	resources :days, except: [:index, :show], controller: 'trips/days'
  end

  root to: "trips#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
