Rails.application.routes.draw do
  get 'boards/create'
  get 'images/create'
  # resources :boards
  # resources :images
  
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create] 
        post '/login', to: 'auth#create'
        get '/profile', to: 'users#profile'
      
    end
  end
end
