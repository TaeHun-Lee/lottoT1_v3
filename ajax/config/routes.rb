Rails.application.routes.draw do
  root 'home#index'
  get '/home/index' => 'home#index'
  post '/home/create' => 'home#create'
  get '/home/destroy/:id' => 'home#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
