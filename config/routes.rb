Rails.application.routes.draw do
  get 'boards/create'
  get 'images/create'
  post 'board_images/create', to: 'board_images#create'
  resources :images, only: [:index, :create]
  resources :boards, only: [:index, :create, :destroy]
  resources :board_images, only: [:index, :create, :destroy]
  resources :images, only: [:index, :create]
  

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create] 
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end
