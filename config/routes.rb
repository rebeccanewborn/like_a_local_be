Rails.application.routes.draw do
  resources :reviews
  resources :cities
  resources :excursions
  resources :user_excursions
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
