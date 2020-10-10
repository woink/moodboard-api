Rails.application.routes.draw do
  get 'boards/create'
  get 'images/create'
  # resources :boards
  # resources :images
  
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :boards do
          resources :images
        end
      end
    end
  end
end
