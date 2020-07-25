Rails.application.routes.draw do
  resources :posts
  resources :follows

  post '/login', to: 'users#login'
  get '/persist', to: 'users#persist'
  post '/uploadProfilepic', to: 'users#uploadProfilepic'
  resources :users
  resources :music_videos
  resources :genres
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
