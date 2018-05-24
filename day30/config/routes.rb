Rails.application.routes.draw do
  devise_for :users
  get '/' => 'home#index'
  get 'home/index'
  post 'home/create'
  get 'home/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
