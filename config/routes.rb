Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists, only: [:index, :edit, :show, :update, :new, :create]
  resources :songs, only: [:index, :edit, :show, :update, :new, :create]
  resources :genres, only: [:index, :edit, :show, :update, :new, :create]
end
