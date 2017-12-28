Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      post 'login' => 'auth#create'
      get 'login' => 'auth#show'
      resources :excursion_occurrences
      resources :reviews
      resources :cities
      resources :excursions
      resources :user_excursions
      delete 'dropout' => 'user_excursions#destroy'
      resources :users
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
