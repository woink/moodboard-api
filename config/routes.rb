Rails.application.routes.draw do
  get 'boards/create'
  get 'images/create'
  # post 'board_images/create', to: 'board_images#create'
  resources :boards, only: [:index, :create, :destroy]
  resources :board_images, only: [:index, :update, :create, :destroy]
  resources :images, only: [:index, :create, :destroy]
  resources :users
  
  resources :boards do
    resources :board_images do
      resources :images
  end
end 


  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :destroy] 
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end
