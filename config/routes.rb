Rails.application.routes.draw do

 #for third-party-api, used local api after create and update an user 
  namespace :api do
    namespace :v1 do
      get '/third_party', to: 'third_party#index'
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :update]
end
