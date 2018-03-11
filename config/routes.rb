Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  get '/listings' => 'listings#index'
  post '/listings' => 'listings#create'
  get '/listings/:id' => 'listings#show'
  patch '/listings/:id' => 'listings#update'

  post '/user_token' => 'user_token#create'
  post '/users' => 'users#create'

  get '/appointments' => 'appointments#index'
  post '/appointments' => 'appointments#create'

  get '/scheduled_listing' => 'scheduled_listing#index'
  post '/scheduled_listing' => 'scheduled_listing#create'
  delete '/scheduled_listing/:id' => 'scheduled_listing#destroy'
end
