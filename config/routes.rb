Rails.application.routes.draw do
  root 'pages#home'
  
  namespace :api do
    namespace :v1 do
      resources :geolocations, only: [:index, :show, :create, :destroy]
    end
  end
end