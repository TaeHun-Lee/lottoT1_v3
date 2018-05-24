Rails.application.routes.draw do
  
  root 'home#index'
  
  post 'home/create'
  
  get 'home/new'
  
  get 'home/destroy/:id' => 'home#destroy'
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
