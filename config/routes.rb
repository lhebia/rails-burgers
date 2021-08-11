Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :burgers, only: [:index, :show, :create, :update]
      resources :reviews, only: [:index, :show, :create, :update, :destroy]
      resources :users

      # get 'login', to: 'sessions#create'
      post 'login', to: 'sessions#create'
    end
  end

end
