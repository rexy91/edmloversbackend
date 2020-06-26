Rails.application.routes.draw do
  resources :follows

  
  post '/users', to: 'users#login'
  resources :users
  resources :music_videos
  resources :genres
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
