Rails.application.routes.draw do

  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/user' => 'secrets#index'
  get '/secrets' => 'secrets#show'
end
