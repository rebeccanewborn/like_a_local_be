Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'user_token' => 'user_token#create'
      post 'login' => 'auth#create'
      resources :reviews
      resources :cities
      resources :excursions
      resources :user_excursions
      resources :users
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
