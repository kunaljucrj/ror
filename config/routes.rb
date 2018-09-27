Rails.application.routes.draw do
  resources :requests
  resources :donors
  resources :admin
  root 'admin#login' 
  post '/' =>  'admin#create' 
  get '/logout' => 'admin#logout'
  get '/reply' => 'admin#reply'
  get '/available' => 'admin#available'
  get '/requeststatus' => 'admin#requeststatus'
  post '/requeststatus' => 'admin#checkstatus'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
