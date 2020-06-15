Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :solar_systems, only: [:index, :create, :show]
      resources :stars, only: [:index, :create]
      resources :planets, only: [:index, :create]
    end
  end
end
