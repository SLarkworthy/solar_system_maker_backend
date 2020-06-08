Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :solar_systems, only: [:index, :create]
      resources :stars, only: [:index]
    end
  end
end
