Rails.application.routes.draw do

  resources :artists #, only: [:new, :create, :update, :show]
  resources :genres #, only: [:new, :create, :update, :show]
  resources :songs #, only: [:new, :create, :update, :show, :index]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end